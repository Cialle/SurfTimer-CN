public void Admin_renameZone(int client, const char[] name)
{
	if (!IsValidClient(client))
	{
		g_ClientRenamingZone[client] = false;
		return;
	}

	if (!name[0] || StrEqual(name, " ") || StrEqual(name, ""))
	{
		CPrintToChat(client, "%t", "Admin1", g_szChatPrefix);
		return;
	}
	if (strlen(name) > 128)
	{
		CPrintToChat(client, "%t", "Admin2", g_szChatPrefix);
		return;
	}
	if (StrEqual(name, "!cancel", false))	 // false -> non sensitive
	{
		CPrintToChat(client, "%t", "Admin3", g_szChatPrefix);
		g_ClientRenamingZone[client] = false;
		ListBonusSettings(client);
		return;
	}
	char szZoneName[128];

	Format(szZoneName, 128, "%s", name);
	db_setZoneNames(client, szZoneName);
	g_ClientRenamingZone[client] = false;
}

public void OnAdminMenuReady(Handle topmenu)
{
	if (topmenu == g_hAdminMenu)
		return;

	g_hAdminMenu			 = topmenu;
	TopMenuObject serverCmds = FindTopMenuCategory(g_hAdminMenu, ADMINMENU_SERVERCOMMANDS);
	AddToTopMenu(g_hAdminMenu, "sm_ckadmin", TopMenuObject_Item, TopMenuHandler2, serverCmds, "sm_ckadmin", ADMFLAG_RCON);
}

public int TopMenuHandler2(Handle topmenu, TopMenuAction action, TopMenuObject object_id, int param, char[] buffer, int maxlength)
{
	if (action == TopMenuAction_DisplayOption)
		Format(buffer, maxlength, "SurfTimer");

	else if (action == TopMenuAction_SelectOption)
		Admin_ckPanel(param, 0);

	return 0;
}

public Action Admin_insertMapperName(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	if (!IsPlayerZoner(client))
	{
		CReplyToCommand(client, "%t", "AdminMapperName", g_szChatPrefix);
		return Plugin_Handled;
	}

	if (args == 0)
	{
		CReplyToCommand(client, "%t", "MapperNameUsage", g_szChatPrefix);
		return Plugin_Handled;
	}
	else
	{
		char arg1[64];
		// char sMapperName[64];
		GetCmdArgString(arg1, sizeof(arg1));

		db_insertMapperName(client, arg1);
	}
	return Plugin_Handled;
}

public Action Admin_insertMapTier(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	if (!IsPlayerZoner(client))
	{
		CPrintToChat(client, "%t", "NoZoneAccess", g_szChatPrefix);
		return Plugin_Handled;
	}

	if (args == 0)
	{
		CReplyToCommand(client, "%t", "Admin5", g_szChatPrefix);
		return Plugin_Handled;
	}
	else
	{
		char arg1[3];
		int	 tier;
		GetCmdArg(1, arg1, sizeof(arg1));
		tier = StringToInt(arg1);
		if (tier < 9 && tier > -1)
			db_insertMapTier(tier);
		else
			CPrintToChat(client, "%t", "Admin6", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Admin_insertSpawnLocation(int client, int args)
{
	if (!IsValidClient(client) || !IsPlayerZoner(client))
		return Plugin_Handled;

	Menu menu = CreateMenu(ChooseTeleSideHandler);
	SetMenuTitle(menu, "选择此重生点的方向（玩家会设置默认方向）");
	AddMenuItem(menu, "", "左侧");
	AddMenuItem(menu, "", "右侧");
	SetMenuOptionFlags(menu, MENUFLAG_BUTTON_EXIT);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);

	return Plugin_Handled;
}

public int ChooseTeleSideHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
		InsertSpawnLocation(param1, param2);
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public void InsertSpawnLocation(int client, int teleside)
{
	float SpawnLocation[3];
	float SpawnAngle[3];
	float Velocity[3];

	GetClientAbsOrigin(client, SpawnLocation);
	GetClientEyeAngles(client, SpawnAngle);
	GetEntPropVector(client, Prop_Data, "m_vecVelocity", Velocity);

	SpawnLocation[2] += 3.0;

	if (g_bGotSpawnLocation[g_iClientInZone[client][2]][1][teleside])
	{
		db_updateSpawnLocations(SpawnLocation, SpawnAngle, Velocity, g_iClientInZone[client][2], teleside);
		CPrintToChat(client, "%t", "Admin7", g_szChatPrefix);
	}
	else
	{
		db_insertSpawnLocations(SpawnLocation, SpawnAngle, Velocity, g_iClientInZone[client][2], teleside);
		CPrintToChat(client, "%t", "SpawnAdded", g_szChatPrefix);
	}

	CPrintToChat(client, "%f : %f : %f : %i", SpawnLocation, SpawnAngle, Velocity, g_iClientInZone[client][2]);
}

public Action Admin_deleteSpawnLocation(int client, int args)
{
	if (!IsValidClient(client) || !IsPlayerZoner(client))
		return Plugin_Handled;

	if (g_bGotSpawnLocation[g_iClientInZone[client][2]][1][0] || g_bGotSpawnLocation[g_iClientInZone[client][2]][1][1])
	{
		Menu menu = CreateMenu(DelSpawnLocationHandler);
		SetMenuTitle(menu, "选择要删除的重生点位置的侧边");

		if (g_bGotSpawnLocation[g_iClientInZone[client][2]][1][0])
			AddMenuItem(menu, "", "左侧");
		else
			AddMenuItem(menu, "", "左侧", ITEMDRAW_DISABLED);

		if (g_bGotSpawnLocation[g_iClientInZone[client][2]][1][1])
			AddMenuItem(menu, "", "右侧");
		else
			AddMenuItem(menu, "", "右侧", ITEMDRAW_DISABLED);

		SetMenuOptionFlags(menu, MENUFLAG_BUTTON_EXIT);
		DisplayMenu(menu, client, MENU_TIME_FOREVER);
	}
	else
		CPrintToChat(client, "%t", "Admin9", g_szChatPrefix);

	return Plugin_Handled;
}

public int DelSpawnLocationHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
		DelSpawnLocation(param1, param2);
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public void DelSpawnLocation(int client, int teleside)
{
	if (g_bGotSpawnLocation[g_iClientInZone[client][2]][1][teleside])
	{
		db_deleteSpawnLocations(g_iClientInZone[client][2], teleside);
		CPrintToChat(client, "%t", "Admin8", g_szChatPrefix);
	}
	else
		CPrintToChat(client, "%t", "Admin9", g_szChatPrefix);
}

public Action Admin_ClearAssists(int client, int args)
{
	if (IsPlayerTimerAdmin(client))
		return Plugin_Handled;

	for (int i = 1; i <= MAXPLAYERS; i++)
	{
		if (IsValidClient(i))
		{
			CS_SetClientAssists(i, 0);
			g_fMaxPercCompleted[0] = 0.0;
			CS_SetMVPCount(i, 0);
		}
	}

	return Plugin_Handled;
}

public Action Admin_ckPanel(int client, int args)
{
	ckAdminMenu(client);
	return Plugin_Handled;
}

public void ckAdminMenu(int client)
{
	if (!IsValidClient(client))
		return;

	if (IsPlayerTimerAdmin(client))
	{
		char   szTmp[128];

		Handle adminmenu = CreateMenu(AdminPanelHandler);
		if (IsPlayerZoner(client))
			Format(szTmp, sizeof(szTmp), "SurfTimer %s 管理菜单（完全访问）", VERSION);
		else
			Format(szTmp, sizeof(szTmp), "SurfTimer %s 管理菜单（有限访问）", VERSION);
		SetMenuTitle(adminmenu, szTmp);

		if (!g_pr_RankingRecalc_InProgress)
			AddMenuItem(adminmenu, "[1.] 重新计算玩家排名", "[1.] 重新计算玩家排名");
		else
			AddMenuItem(adminmenu, "[1.] 重新计算玩家排名", "[1.] 停止重新计算");

		AddMenuItem(adminmenu, "", "", ITEMDRAW_SPACER);

		int menuItemNumber = 2;

		if (IsPlayerZoner(client))
		{
			Format(szTmp, sizeof(szTmp), "[%i.] 编辑或创建区域", menuItemNumber);
			AddMenuItem(adminmenu, szTmp, szTmp);
		}
		else
		{
			Format(szTmp, sizeof(szTmp), "[%i.] 编辑或创建区域", menuItemNumber);
			AddMenuItem(adminmenu, szTmp, szTmp, ITEMDRAW_DISABLED);
		}
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 上帝模式  -  %s", menuItemNumber, (g_hCvarGodMode.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 无阻挡模式  -  %s", menuItemNumber, (g_hCvarNoBlock.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 自动重生  -  %s", menuItemNumber, (g_hAutoRespawn.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 去除武器  -  %s", menuItemNumber, (g_hCleanWeapons.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] Restore功能  -  %s", menuItemNumber, (g_hcvarRestore.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] !pause 命令 -  %s", menuItemNumber, (g_hPauseServerside.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] !goto 命令  -  %s", menuItemNumber, (g_hGoToServer.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 无线电命令  -  %s", menuItemNumber, (g_hRadioCommands.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 回放机器人  -  %s", menuItemNumber, (g_hReplayBot.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 玩家积分系统  -  %s", menuItemNumber, (g_hPointSystem.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 玩家国家标签  -  %s", menuItemNumber, (g_hCountry.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 允许自定义模型  -  %s", menuItemNumber, (g_hPlayerSkinChange.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		if (GetConVarBool(g_hNoClipS))
			Format(szTmp, sizeof(szTmp), "[%i.] +noclip  -  已启用", menuItemNumber);
		else
			Format(szTmp, sizeof(szTmp), "[%i.] +noclip（管理员/VIP除外）  -  已禁用", menuItemNumber);
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		if (GetConVarBool(g_hAutoBhopConVar))
			Format(szTmp, sizeof(szTmp), "[%i.] 自动Bhop（仅限 surf_/bhop_ 地图）  -  已启用", menuItemNumber);
		else
			Format(szTmp, sizeof(szTmp), "[%i.] 自动Bhop  -  已禁用", menuItemNumber);
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 允许地图更改  -  %s", menuItemNumber, (g_hMapEnd.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 连接消息  -  %s", menuItemNumber, (g_hConnectMsg.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 断开连接消息 - %s", menuItemNumber, (g_hDisconnectMsg.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 信息机器人  -  %s", menuItemNumber, (g_hInfoBot.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] Attack spam 保护  -  %s", menuItemNumber, (g_hAttackSpamProtection.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);
		menuItemNumber++;

		Format(szTmp, sizeof(szTmp), "[%i.] 允许结束当前回合  -  %s", menuItemNumber, (g_hAllowRoundEndCvar.BoolValue) ? "已启用" : "已禁用");
		AddMenuItem(adminmenu, szTmp, szTmp);

		menuItemNumber++;

		SetMenuExitButton(adminmenu, true);
		SetMenuOptionFlags(adminmenu, MENUFLAG_BUTTON_EXIT);
		if (g_AdminMenuLastPage[client] < 6)
		{
			DisplayMenuAtItem(adminmenu, client, 0, MENU_TIME_FOREVER);
		}
		else if (g_AdminMenuLastPage[client] < 12)
		{
			DisplayMenuAtItem(adminmenu, client, 6, MENU_TIME_FOREVER);
		}
		else if (g_AdminMenuLastPage[client] < 18)
		{
			DisplayMenuAtItem(adminmenu, client, 12, MENU_TIME_FOREVER);
		}
		else if (g_AdminMenuLastPage[client] < 24)
		{
			DisplayMenuAtItem(adminmenu, client, 18, MENU_TIME_FOREVER);
		}
		else if (g_AdminMenuLastPage[client] < 30)
		{
			DisplayMenuAtItem(adminmenu, client, 24, MENU_TIME_FOREVER);
		}
		else if (g_AdminMenuLastPage[client] < 36)
		{
			DisplayMenuAtItem(adminmenu, client, 30, MENU_TIME_FOREVER);
		}
		else if (g_AdminMenuLastPage[client] < 42)
		{
			DisplayMenuAtItem(adminmenu, client, 36, MENU_TIME_FOREVER);
		}
	}
	else
	{
		CPrintToChat(client, "%t", "Admin11", g_szChatPrefix);
		return;
	}
}

public int AdminPanelHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		bool refresh = true;
		switch (param2)
		{
			case 0:
			{
				if (!g_pr_RankingRecalc_InProgress)
				{
					CPrintToChat(param1, "%t", "PrUpdateStarted", g_szChatPrefix);
					g_bManualRecalc		= true;
					g_pr_Recalc_AdminID = param1;
					RefreshPlayerRankTable(MAX_PR_PLAYERS);
				}
				else
				{
					for (int i = 66; i < MAX_PR_PLAYERS; i++)
						g_bProfileRecalc[i] = false;
					g_bManualRecalc				  = false;
					g_pr_RankingRecalc_InProgress = false;
					CPrintToChat(param1, "%t", "StopRecalculation", g_szChatPrefix);
				}
			}

			case 2:
			{
				ZoneMenu(param1);
				refresh = false;
			}

			case 3:
			{
				ServerCommand("ck_godmode %d", (g_hCvarGodMode.BoolValue) ? 0 : 1);
			}

			case 4:
			{
				ServerCommand("ck_noblock %d", (g_hCvarNoBlock.BoolValue) ? 0 : 1);
			}

			case 5:
			{
				ServerCommand("ck_autorespawn %d", (g_hAutoRespawn.BoolValue) ? 0 : 1);
			}

			case 6:
			{
				ServerCommand("ck_clean_weapons %d", (g_hCleanWeapons.BoolValue) ? 0 : 1);
			}

			case 7:
			{
				ServerCommand("ck_restore %d", (g_hcvarRestore.BoolValue) ? 0 : 1);
			}

			case 8:
			{
				ServerCommand("ck_pause %d", (g_hPauseServerside.BoolValue) ? 0 : 1);
			}

			case 9:
			{
				ServerCommand("ck_goto %d", (g_hGoToServer.BoolValue) ? 0 : 1);
			}

			case 10:
			{
				ServerCommand("ck_use_radio %d", (g_hRadioCommands.BoolValue) ? 0 : 1);
			}

			case 11:
			{
				ServerCommand("ck_replay_bot %d", (g_hReplayBot.BoolValue) ? 0 : 1);
			}

			case 12:
			{
				ServerCommand("ck_point_system %d", (g_hPointSystem.BoolValue) ? 0 : 1);
			}

			case 13:
			{
				ServerCommand("ck_country_tag %d", (g_hCountry.BoolValue) ? 0 : 1);
			}

			case 14:
			{
				ServerCommand("ck_custom_models %d", (g_hPlayerSkinChange.BoolValue) ? 0 : 1);
			}

			case 15:
			{
				ServerCommand("ck_noclip %d", (g_hNoClipS.BoolValue) ? 0 : 1);
			}

			case 16:
			{
				ServerCommand("ck_auto_bhop %d", (g_hAutoBhopConVar.BoolValue) ? 0 : 1);
			}

			case 17:
			{
				ServerCommand("ck_map_end %d", (g_hMapEnd.BoolValue) ? 0 : 1);
			}

			case 18:
			{
				ServerCommand("ck_connect_msg %d", (g_hConnectMsg.BoolValue) ? 0 : 1);
			}

			case 19:
			{
				ServerCommand("ck_disconnect_msg %d", (g_hDisconnectMsg.BoolValue) ? 0 : 1);
			}

			case 20:
			{
				ServerCommand("ck_info_bot %d", (g_hInfoBot.BoolValue) ? 0 : 1);
			}

			case 21:
			{
				ServerCommand("ck_attack_spam_protection %d", (g_hAttackSpamProtection.BoolValue) ? 0 : 1);
			}

			case 22:
			{
				ServerCommand("ck_round_end %d", (g_hAllowRoundEndCvar.BoolValue) ? 0 : 1);
			}
		}

		g_AdminMenuLastPage[param1] = param2;

		if (refresh)
		{
			CreateTimer(0.1, RefreshAdminMenu, param1, TIMER_FLAG_NO_MAPCHANGE);
		}
	}

	if (action == MenuAction_End)
	{
		delete menu;
	}

	return 0;
}

public Action Admin_RefreshProfile(int client, int args)
{
	if (!IsPlayerTimerAdmin(client))
		return Plugin_Handled;

	if (args == 0)
	{
		CReplyToCommand(client, "%t", "Admin12", g_szChatPrefix);
		return Plugin_Handled;
	}
	if (args > 0)
	{
		char szSteamID[128];
		char szArg[128];

		for (int i = 1; i < 6; i++)
		{
			GetCmdArg(i, szArg, sizeof(szArg));
			if (!StrEqual(szArg, "", false))
			{
				Format(szSteamID, sizeof(szSteamID), "%s%s", szSteamID, szArg);
			}
		}
		RecalcPlayerRank(client, szSteamID);
	}
	return Plugin_Handled;
}

public Action Admin_RefreshPlayerRankTable(int client, int args)
{
	if (!IsPlayerTimerAdmin(client))
		return Plugin_Handled;

	if (args > 0)
	{
		char sArg[12];
		GetCmdArg(1, sArg, sizeof(sArg));
		if (IsStringNumeric(sArg))
		{
			RefreshPlayerRankTable(StringToInt(sArg));
			return Plugin_Handled;
		}
	}

	RefreshPlayerRankTable(MAX_PR_PLAYERS);
	return Plugin_Handled;
}

public Action Admin_ResetRecords(int client, int args)
{
	if (args < 1)
	{
		ReplyToCommand(client, "%s Usage: sm_wipeplayer <steamid>", g_szChatPrefix);
		return Plugin_Handled;
	}
	else
	{
		char szArg[32];
		GetCmdArgString(szArg, sizeof(szArg));

		StripQuotes(szArg);
		TrimString(szArg);
		PrintToChat(client, "Output test: %s", szArg);
		db_WipePlayer(client, szArg);
	}
	return Plugin_Handled;
}