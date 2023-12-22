/* 
	SurfTimer Commands
	TODO: Cleanup and sort commands
*/
void CreateCommands()
{
	// Client Commands
	RegConsoleCmd("sm_usp", Client_Usp, "[surftimer] 生成一个USP消音器");
    RegConsoleCmd("sm_glock", Client_Glock, "[surftimer] 生成一个格洛克手枪");
    RegConsoleCmd("sm_avg", Client_Avg, "[surftimer] 在聊天中显示当前地图的平均时间");
    RegConsoleCmd("sm_hidechat", Client_HideChat, "[surftimer] 隐藏你的游戏内聊天");
    RegConsoleCmd("sm_hideweapon", Client_HideWeapon, "[surftimer] 隐藏你的武器模型");
    RegConsoleCmd("sm_disarm", Client_HideWeapon, "[surftimer] 隐藏你的武器模型");
    RegAdminCmd("sm_goto", Client_GoTo, ADMFLAG_CUSTOM2, "[surftimer] 传送到选择的玩家");
    RegConsoleCmd("sm_sound", Client_QuakeSounds, "[surftimer] 开/关地震音效");
    RegConsoleCmd("sm_bhop", Client_AutoBhop, "[surftimer] 开/关自动跳跃");
    RegConsoleCmd("sm_flashlight", Client_Flashlight, "[surftimer] 开/关手电筒");
    RegConsoleCmd("sm_maptop", Client_MapTop, "[surftimer] 显示当前地图的本地排行榜");
    RegConsoleCmd("sm_wr", Client_Wr, "[surftimer] 在聊天中显示记录的世界纪录");
    RegConsoleCmd("sm_wrb", Client_Wrb, "[surftimer] 在聊天中显示记录的世界纪录（按地图分类）");
    RegConsoleCmd("sm_spec", Client_Spec, "[surftimer] 选择一个玩家进行观战并切换到观众模式");
    RegConsoleCmd("sm_watch", Client_Spec, "[surftimer] 选择一个玩家进行观战并切换到观众模式");
    RegConsoleCmd("sm_spectate", Client_Spec, "[surftimer] 选择一个玩家进行观战并切换到观众模式");
    RegConsoleCmd("sm_helpmenu", Client_Help, "[surftimer] 显示所有SurfTimer命令的帮助菜单");
    RegConsoleCmd("sm_help", Client_Help, "[surftimer] 显示所有SurfTimer命令的帮助菜单");
    RegConsoleCmd("sm_profile", Client_Profile, "[surftimer] 打开玩家个人资料");
    RegConsoleCmd("sm_options", Client_OptionMenu, "[surftimer] 打开选项菜单");
    RegConsoleCmd("sm_top", Client_Top, "[surftimer] 显示排行榜（前100名玩家，前50名总体）");
    RegConsoleCmd("sm_topsurfers", Client_Top, "[surftimer] 显示排行榜（前100名玩家，前50名总体）");
    RegConsoleCmd("sm_bonustop", Client_BonusTop, "[surftimer] 显示奖励的排行榜");
    RegConsoleCmd("sm_btop", Client_BonusTop, "[surftimer] 显示奖励的排行榜");
    RegConsoleCmd("sm_stop", Client_Stop, "[surftimer] 停止计时器");
    RegConsoleCmd("sm_ranks", Client_Ranks, "[surftimer] 显示可用玩家级别的菜单");
    RegConsoleCmd("sm_pause", Client_Pause, "[surftimer] 开/关暂停（计时器暂停且移动被冻结）");
    RegConsoleCmd("sm_latest", Client_Latest, "[surftimer] 显示最新的地图记录");
    RegConsoleCmd("sm_rr", Client_Latest, "[surftimer] 显示最新的地图记录");
    RegConsoleCmd("sm_rb", Client_Latest, "[surftimer] 显示最新的地图记录");
    RegConsoleCmd("sm_hide", Client_Hide, "[surftimer] 开/关隐藏其他玩家");
    RegConsoleCmd("sm_togglecheckpoints", ToggleCheckpoints, "[surftimer] 开/关启用玩家检查点");
    RegConsoleCmd("+noclip", NoClip, "[surftimer] 开启无碰撞模式");
    RegConsoleCmd("-noclip", UnNoClip, "[surftimer] 关闭无碰撞模式");
    RegConsoleCmd("sm_nc", Command_ckNoClip, "[surftimer] 开/关玩家无碰撞模式");
    RegConsoleCmd("sm_ctop", Client_CountryTOP, "[surftimer] 显示国家排行榜");
    RegConsoleCmd("sm_ctop_help", Client_CountryTop_Help, "[surftimer] 显示如何使用sm_ctop命令的信息");
    RegConsoleCmd("sm_crank", Client_CountryRank, "[surftimer] 显示玩家国家排名");
    RegConsoleCmd("sm_crank_help", Client_CountryRank_Help, "[surftimer] 显示如何使用sm_crank命令的信息");
    RegConsoleCmd("sm_continenttop", Client_ContinentTOP, "[surftimer] 显示洲排行榜");
    RegConsoleCmd("sm_continenttop_help", Client_ContinentTop_Help, "[surftimer] 显示如何使用sm_ctop命令的信息");
    RegConsoleCmd("sm_continentrank", Client_ContinentRank, "[surftimer] 显示玩家洲排名");
    RegConsoleCmd("sm_continentrank_help", Client_ContinentRank_Help, "[surftimer] 显示如何使用sm_crank命令的信息");

	    // 传送命令
    RegConsoleCmd("sm_stages", Command_SelectStage, "[surftimer] 打开关卡选择器");
    RegConsoleCmd("sm_r", Command_Restart, "[surftimer] 将玩家传送回起点");
    RegConsoleCmd("sm_restart", Command_Restart, "[surftimer] 将玩家传送回起点");
    RegConsoleCmd("sm_start", Command_Restart, "[surftimer] 将玩家传送回起点");
    RegConsoleCmd("sm_b", Command_ToBonus, "[surftimer] 将玩家传送到奖励关的起点");
    RegConsoleCmd("sm_bonus", Command_ToBonus, "[surftimer] 将玩家传送到奖励关的起点");
    RegConsoleCmd("sm_bonuses", Command_ListBonuses, "[surftimer] 显示当前地图中所有奖励的列表");
    RegConsoleCmd("sm_s", Command_ToStage, "[surftimer] 将玩家传送到选定的关卡");
    RegConsoleCmd("sm_stage", Command_ToStage, "[surftimer] 将玩家传送到选定的关卡");
    RegConsoleCmd("sm_end", Command_ToEnd, "[surftimer] 将玩家传送到终点区域");

    // 杂项
    RegConsoleCmd("sm_tier", Command_Tier, "[surftimer] 打印有关当前地图的信息");
    RegConsoleCmd("sm_maptier", Command_Tier, "[surftimer] 打印有关当前地图的信息");
    RegConsoleCmd("sm_mapinfo", Command_Tier, "[surftimer] 打印有关当前地图的信息");
    RegConsoleCmd("sm_m", Command_Tier, "[surftimer] 打印有关当前地图的信息");
    RegConsoleCmd("sm_difficulty", Command_Tier, "[surftimer] 打印有关当前地图的信息");
    RegConsoleCmd("sm_howto", Command_HowTo, "[surftimer] 显示有关如何冲浪的YouTube视频");

    // 传送到关卡起点
    RegConsoleCmd("sm_stuck", Command_Teleport, "[surftimer] 将玩家传送回关卡的起点");
    RegConsoleCmd("sm_back", Command_Teleport, "[surftimer] 将玩家传送回关卡的起点");
    RegConsoleCmd("sm_rs", Command_Teleport, "[surftimer] 将玩家传送回关卡的起点");
    RegConsoleCmd("sm_play", Command_Teleport, "[surftimer] 将玩家传送回起点");
    RegConsoleCmd("sm_spawn", Command_Teleport, "[surftimer] 将玩家传送回起点");

    // 玩家检查点
    RegConsoleCmd("sm_teleport", Command_goToPlayerCheckpoint, "[surftimer] 将玩家传送到他的最后一个检查点");
    RegConsoleCmd("sm_tele", Command_goToPlayerCheckpoint, "[surftimer] 将玩家传送到他的最后一个检查点");
    RegConsoleCmd("sm_prac", Command_goToPlayerCheckpoint, "[surftimer] 将玩家传送到他的最后一个检查点");
    RegConsoleCmd("sm_practice", Command_goToPlayerCheckpoint, "[surftimer] 将玩家传送到他的最后一个检查点");
    RegConsoleCmd("sm_loadloc", Command_goToPlayerCheckpoint, "[surftimer] 将玩家传送到他的最后一个检查点");
    RegConsoleCmd("sm_cp", Command_createPlayerCheckpoint, "[surftimer] 创建一个检查点，玩家可以传送回去");
    RegConsoleCmd("sm_checkpoint", Command_createPlayerCheckpoint, "[surftimer] 创建一个检查点，玩家可以传送回去");
    RegConsoleCmd("sm_saveloc", Command_createPlayerCheckpoint, "[surftimer] 创建一个检查点，玩家可以传送回去");
    RegConsoleCmd("sm_savelocs", Command_SaveLocList);
    RegConsoleCmd("sm_loclist", Command_SaveLocList);
    RegConsoleCmd("sm_normal", Command_normalMode, "[surftimer] 切换玩家回到正常模式");
    RegConsoleCmd("sm_n", Command_normalMode, "[surftimer] 切换玩家回到正常模式");
    RegConsoleCmd("sm_clearsavelocs", Command_clearPlayerCheckpoints, "[surftimer] 清除玩家的检查点");
    RegConsoleCmd("sm_clearlocs", Command_clearPlayerCheckpoints, "[surftimer] 清除玩家的检查点");
    RegConsoleCmd("sm_addsaveloc", Command_recreatePlayerCheckpoint, "[surftimer] 重新创建一个检查点，玩家可以传送回去");
    RegConsoleCmd("sm_addloc", Command_recreatePlayerCheckpoint, "[surftimer] 重新创建一个检查点，玩家可以传送回去");
    RegConsoleCmd("sm_teleprev", Command_previousSaveloc, "[surftimer] 向后循环通过创建的检查点");
    RegConsoleCmd("sm_telenext", Command_nextSaveloc, "[surftimer] 向前循环通过创建的检查点");

    // 管理命令
    RegConsoleCmd("sm_ckadmin", Admin_ckPanel, "[surftimer] 显示SurfTimer管理员菜单面板");
    RegConsoleCmd("sm_refreshprofile", Admin_RefreshProfile, "[surftimer] 重新计算给定Steam ID的玩家档案");
    RegConsoleCmd("sm_clearassists", Admin_ClearAssists, "[surftimer] 清除所有玩家的协助点（地图进度）"); // 重新加载地图
    RegConsoleCmd("sm_refreshranks", Admin_RefreshPlayerRankTable, "[surftimer] 刷新玩家排名表");

    // 分区/地图设置命令
    RegConsoleCmd("sm_zones", Command_Zones, "[surftimer] [zoner] 打开区域创建菜单");
    RegConsoleCmd("sm_hookzone", Command_HookZones, "[surftimer] [zoner] 打开区域挂钩创建菜单");
    RegConsoleCmd("sm_addmaptier", Admin_insertMapTier, "[surftimer] [zoner] 更改地图层级");
    RegConsoleCmd("sm_amt", Admin_insertMapTier, "[surftimer] [zoner] 更改地图层级");
    RegConsoleCmd("sm_amn", Admin_insertMapperName, "[surftimer] [zoner] 将映射器名称添加到数据库");
    RegConsoleCmd("sm_addmappername", Admin_insertMapperName, "[surftimer] [zoner] 将映射器名称添加到数据库");
    RegConsoleCmd("sm_addspawn", Admin_insertSpawnLocation, "[surftimer] [zoner] 更改 !r 对玩家传送的位置");
    RegConsoleCmd("sm_delspawn", Admin_deleteSpawnLocation, "[surftimer] [zoner] 移除自定义 !r 位置");
    RegConsoleCmd("sm_mapsettings", Admin_MapSettings, "[surftimer] [zoner] 显示包含更改地图设置的各种选项的菜单");
    RegConsoleCmd("sm_ms", Admin_MapSettings, "[surftimer] [zoner] 显示包含更改地图设置的各种选项的菜单");
    RegConsoleCmd("sm_maxvelocity", Command_SetMaxVelocity, "[surftimer] [zoner] 设置当前地图的最大速度");
    RegConsoleCmd("sm_mv", Command_SetMaxVelocity, "[surftimer] [zoner] 设置当前地图的最大速度");
    RegConsoleCmd("sm_announcerecord", Command_SetAnnounceRecord, "[surftimer] [zoner] 设置记录是否将在所有完成时宣布，仅限PB或仅限客户端");
    RegConsoleCmd("sm_ar", Command_SetAnnounceRecord, "[surftimer] [zoner] 设置记录是否将在所有完成时宣布，仅限PB或仅限客户端");
    RegConsoleCmd("sm_gravityfix", Command_SetGravityFix, "[surftimer] [zoner] 切换当前地图的重力修复");
    RegConsoleCmd("sm_gf", Command_SetGravityFix, "[surftimer] [zoner] 切换当前地图的重力修复");
    RegConsoleCmd("sm_triggers", Command_ToggleTriggers, "[surftimer] [zoner] 切换地图触发器的显示");
    RegConsoleCmd("sm_noclipspeed", Command_NoclipSpeed, "[surftimer] [zoner] 更改 sv_noclipspeed 的值");

    // VIP 命令
    RegAdminCmd("sm_fixbot", Admin_FixBot, g_VipFlag, "[surftimer] 切换回放机器人的开关");
    RegAdminCmd("sm_fixbots", Admin_FixBot, g_VipFlag, "[surftimer] 切换回放机器人的开关");
    RegAdminCmd("sm_fb", Admin_FixBot, g_VipFlag, "[surftimer] 切换回放机器人的开关");

    RegConsoleCmd("sm_vip", Command_Vip, "[surftimer] [vip] 向客户端显示VIP菜单");
    RegConsoleCmd("sm_mytitle", Command_PlayerTitle, "[surftimer] [vip] 向玩家显示一个菜单，显示他们的自定义标题并允许他们更改颜色");
    RegConsoleCmd("sm_title", Command_PlayerTitle, "[surftimer] [vip] 向玩家显示一个菜单，显示他们的自定义标题并允许他们更改颜色");
    RegConsoleCmd("sm_customtitle", Command_SetDbTitle, "[surftimer] [vip] VIP 可以将自己的自定义标题设置到数据库");
    RegConsoleCmd("sm_namecolour", Command_SetDbNameColour, "[surftimer] [vip] VIP 可以将自己的自定义名称颜色设置到数据库");
    RegConsoleCmd("sm_textcolour", Command_SetDbTextColour, "[surftimer] [vip] VIP 可以将自己的自定义文本颜色设置到数据库");
    RegConsoleCmd("sm_ve", Command_VoteExtend, "[surftimer] [vip] 投票延长地图时间");
    RegConsoleCmd("sm_colours", Command_ListColours, "[surftimer] 列出 sm_mytitle 和 sm_namecolour 可用的颜色");
    RegConsoleCmd("sm_colors", Command_ListColours, "[surftimer] 列出 sm_mytitle 和 sm_namecolour 可用的颜色");
    RegConsoleCmd("sm_toggletitle", Command_ToggleTitle, "[surftimer] [vip] VIP 可以切换他们的标题");
    RegConsoleCmd("sm_joinmsg", Command_JoinMsg, "[surftimer] [vip] 允许 VIP 设置他们的加入消息");

	// VIP
    RegAdminCmd("sm_givevip", VIP_GiveVip, ADMFLAG_ROOT, "[surftimer] 给玩家授予VIP");
    RegAdminCmd("sm_removevip", VIP_RemoveVip, ADMFLAG_ROOT, "[surftimer] 移除玩家的VIP");
    RegAdminCmd("sm_addcredits", VIP_GiveCredits, ADMFLAG_ROOT, "[surftimer] 给玩家授予积分");

    // WRCP
    RegConsoleCmd("sm_wrcp", Client_Wrcp, "[surftimer] 显示地图的阶段时间");
    RegConsoleCmd("sm_wrcps", Client_Wrcp, "[surftimer] 显示地图的阶段时间");
    RegConsoleCmd("sm_srcp", Client_Wrcp, "[surftimer] 显示地图的阶段时间");
    RegConsoleCmd("sm_srcps", Client_Wrcp, "[surftimer] 显示地图的阶段时间");

    // QOL命令
    RegConsoleCmd("sm_gb", Command_GoBack, "[surftimer] 回到上一阶段");
    RegConsoleCmd("sm_goback", Command_GoBack, "[surftimer] 回到上一阶段");
    RegConsoleCmd("sm_mtop", Client_MapTop, "[surftimer] 显示给定地图的本地地图排名");
    RegConsoleCmd("sm_p", Client_Profile, "[surftimer] 打开玩家档案");
    RegConsoleCmd("sm_timer", Client_OptionMenu, "[surftimer] 打开选项菜单");
    RegConsoleCmd("sm_toggletimer", Client_ToggleTimer, "[surftimer] 切换计时器的开关");
    RegConsoleCmd("sm_surftimer", Client_OptionMenu, "[surftimer] 打开选项菜单");
    RegConsoleCmd("sm_bhoptimer", Client_OptionMenu, "[surftimer] 打开选项菜单");
    RegConsoleCmd("sm_knife", Command_GiveKnife, "[surftimer] 给玩家一把刀");
    RegConsoleCmd("sm_prinfo_help", Command_PRinfo_help, "[surftimer] 在控制台显示如何使用该命令的信息");
    RegConsoleCmd("sm_csd", Command_CenterSpeed, "[surftimer] [settings] on/off - 切换中心速度显示");
    RegConsoleCmd("sm_style_acronyms", Client_StyleAcronyms, "[surftimer] 显示所有可用的风格格式");
    RegConsoleCmd("sm_continent_acronyms", Client_ContinentAcronyms, "[surftimer] 显示所有可用的大洲格式");
    RegConsoleCmd("sm_restore", Restore_Menu, "[surftimer] 恢复客户端的上次已知位置");

    // 新命令
    RegConsoleCmd("sm_mrank", Command_SelectMapTime, "[surftimer] 在聊天中打印玩家地图记录");
    RegConsoleCmd("sm_brank", Command_SelectBonusTime, "[surftimer] 在聊天中打印玩家奖励记录");
    RegConsoleCmd("sm_pr", Command_SelectPlayerPr, "[surftimer] 显示PR菜单到客户端");
    RegConsoleCmd("sm_togglemapfinish", Command_ToggleMapFinish, "[surftimer] 切换玩家进入终点时是否完成地图");
    RegConsoleCmd("sm_tmf", Command_ToggleMapFinish, "[surftimer] 切换玩家进入终点时是否完成地图");
    RegConsoleCmd("sm_repeat", Command_Repeat, "[surftimer] 切换玩家是否保持重复同一阶段");
    RegConsoleCmd("sm_rank", Command_SelectRank, "[surftimer] 在聊天中显示玩家的服务器排名");
    RegConsoleCmd("sm_mi", Command_MapImprovement, "[surftimer] 打开地图改进点面板");
    RegConsoleCmd("sm_specbot", Command_SpecBot, "[surftimer] 观看地图机器人");
    RegConsoleCmd("sm_specbotbonus", Command_SpecBonusBot, "[surftimer] 观看奖励机器人");
    RegConsoleCmd("sm_specbotb", Command_SpecBonusBot, "[surftimer] 观看奖励机器人");
    RegConsoleCmd("sm_showzones", Command_ShowZones, "[surftimer] 客户端可以切换区域是否对其可见");
    RegConsoleCmd("sm_nextrank", Command_NextRank, "[surftimer] 显示达到下一等级所需的点数");

    // 风格
    RegConsoleCmd("sm_style", Client_SelectStyle, "[surftimer] 打开风格选择菜单");
    RegConsoleCmd("sm_styles", Client_SelectStyle, "[surftimer] 打开风格选择菜单");

    // 测试
    RegAdminCmd("sm_test", sm_test, ADMFLAG_CUSTOM6);
    RegAdminCmd("sm_vel", Client_GetVelocity, ADMFLAG_ROOT);
    RegAdminCmd("sm_targetname", Client_TargetName, ADMFLAG_ROOT);

    // !Startpos -- Goose
    RegConsoleCmd("sm_startpos", Command_Startpos, "[surftimer] 保存当前位置作为新的 !r 生成点。");
    RegConsoleCmd("sm_sp", Command_Startpos, "[surftimer] 保存当前位置作为新的 !r 生成点。");
    RegConsoleCmd("sm_resetstartpos", Command_ResetStartpos, "[surftimer] 移除自定义 !r 生成点。");
    RegConsoleCmd("sm_rsp", Command_ResetStartpos, "[surftimer] 移除自定义 !r 生成点。");

    // CPR
    RegConsoleCmd("sm_cpr", Command_CPR, "[surftimer] 比较客户端时间与另一个客户端的时间");
    RegConsoleCmd("sm_prinfo", Command_PRinfo, "[surftimer] 关于地图上个人信息的信息");

    // CCP
    RegConsoleCmd("sm_ccp", Command_CCP, "[surftimer] 关于地图上检查点信息的信息");

    // 重新加载地图
    RegAdminCmd("sm_rm", Command_ReloadMap, ADMFLAG_ROOT, "[surftimer] 重新加载当前地图");

    // 播放记录
    RegConsoleCmd("sm_replay", Command_PlayRecord, "[surftimer] 设置回放机器人播放一次记录");
    RegConsoleCmd("sm_replays", Command_PlayRecord, "[surftimer] 设置回放机器人播放一次记录");

    // 删除记录
    RegAdminCmd("sm_deleterecords", Command_DeleteRecords, g_ZonerFlag, "[surftimer] [zoner] 删除记录");
    RegAdminCmd("sm_dr", Command_DeleteRecords, g_ZonerFlag, "[surftimer] [zoner] 删除记录");
    RegAdminCmd("sm_wipeplayer", Admin_ResetRecords, ADMFLAG_ROOT, "[surfTimer] 移除特定steamid的所有数据库条目 - 需要z标志");

    // 设置命令
    RegConsoleCmd("sm_pre", Command_Prestrafe, "[surftimer] [settings] 切换玩家的prestrafe消息");
    RegConsoleCmd("sm_prestrafe", Command_Prestrafe, "[surftimer] [settings] 切换玩家的prestrafe消息");
    RegConsoleCmd("sm_togglehints", Command_ToggleHints, "[surftimer] [settings] 切换提示消息");
    RegConsoleCmd("sm_hints", Command_ToggleHints, "[surftimer] [settings] 切换提示消息");
    RegConsoleCmd("sm_silentspec", Command_SilentSpec, "[surftimer] [settings] 切换玩家的无声观看");
    RegConsoleCmd("sm_sspec", Command_SilentSpec, "[surftimer] [settings] 切换玩家的无声观看");
    RegConsoleCmd("sm_togglewrcps", Command_ToggleWrcps, "[surftimer] [settings] on/off - 启用/禁用玩家检查点");
    RegConsoleCmd("sm_togglecps", Command_ToggleCps, "[surftimer] [settings] on/off - 启用/禁用玩家检查点");
    RegConsoleCmd("sm_quake", Command_ToggleQuake, "[surftimer] [settings] on/off - 启用/禁用声音");
    RegConsoleCmd("sm_startside", Command_ChangeStartSide, "[surftimer] [settings] left/right - 更改起始方向");
    RegConsoleCmd("sm_speedgradient", Command_ChangeSpeedGradient, "[surftimer] [settings] white/green/rainbow/momentum - 更改速度梯度");
    RegConsoleCmd("sm_speedmode", Command_ChangeSpeedMode, "[surftimer] [settings] xy/xyz/z - 更改速度模式");
    RegConsoleCmd("sm_prespeedmode", Command_ChangePreSpeedMode, "[surftimer] [settings] xy/xyz/z - 更改prestrafe速度模式");
    RegConsoleCmd("sm_centerspeed", Command_CenterSpeed, "[surftimer] [settings] on/off - 切换中心速度显示");
    RegConsoleCmd("sm_nctriggers", Command_ToggleNcTriggers, "[surftimer] [settings] on/off - 切换在无裁剪时触发器");
    RegConsoleCmd("sm_autoreset", Command_ToggleAutoReset, "[surftimer] [settings] on/off - 切换当前地图/奖励运行的自动重置，如果您超过您的pb");

}

public Action Command_ToggleAutoReset(int client, int args) {
	if (g_iAutoReset[client]) {
		g_iAutoReset[client] = false;
		CPrintToChat(client, "%t", "AutoResetDisabled", g_szChatPrefix);
	} else {
		g_iAutoReset[client] = true;
		CPrintToChat(client, "%t", "AutoResetEnabled", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_ToggleNcTriggers(int client, int args) {
	if (g_iDisableTriggers[client]) {
		g_iDisableTriggers[client] = false;
		CPrintToChat(client, "%t", "TriggersDisabled", g_szChatPrefix);
	} else {
		g_iDisableTriggers[client] = true;
		CPrintToChat(client, "%t", "TriggersEnabled", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_CenterSpeed(int client, int args) {
	if (g_bCenterSpeedDisplay[client]){
		g_bCenterSpeedDisplay[client] = false;
		CPrintToChat(client, "%t", "CenterSpeedOff", g_szChatPrefix);
	}
	else{
		g_bCenterSpeedDisplay[client] = true;
		CPrintToChat(client, "%t", "CenterSpeedOn", g_szChatPrefix);
	}

	CenterSpeedDisplay(client, false);
	return Plugin_Handled;
}

public Action Command_ChangeSpeedMode(int client, int args) {
	if (g_SpeedMode[client] == 0) { 
		g_SpeedMode[client]++;
		CPrintToChat(client, "%t", "SpeedModeXYZ", g_szChatPrefix);
	} else if (g_SpeedMode[client] == 1) {
		g_SpeedMode[client]++;
		CPrintToChat(client, "%t", "SpeedModeZ", g_szChatPrefix);
	} else {
		g_SpeedMode[client] = 0;
		CPrintToChat(client, "%t", "SpeedModeXY", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_ChangePreSpeedMode(int client, int args) {
	if (g_PreSpeedMode[client] == 0) { 
		g_PreSpeedMode[client]++;
		CPrintToChat(client, "%t", "PreSpeedModeXYZ", g_szChatPrefix);
	} else if (g_PreSpeedMode[client] == 1) {
		g_PreSpeedMode[client]++;
		CPrintToChat(client, "%t", "PreSpeedModeZ", g_szChatPrefix);
	} else {
		g_PreSpeedMode[client] = 0;
		CPrintToChat(client, "%t", "PreSpeedModeXY", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_ChangeSpeedGradient(int client, int args) {
	if (g_SpeedGradient[client] == 0) { 
		g_SpeedGradient[client]++;
		CPrintToChat(client, "%t", "SpeedGradientRed", g_szChatPrefix);
	} else if (g_SpeedGradient[client] == 1) {
		g_SpeedGradient[client]++;
		CPrintToChat(client, "%t", "SpeedGradientGreen", g_szChatPrefix);
	} else if (g_SpeedGradient[client] == 2) {
		g_SpeedGradient[client]++;
		CPrintToChat(client, "%t", "SpeedGradientBlue", g_szChatPrefix);
	} else if (g_SpeedGradient[client] == 3) {
		g_SpeedGradient[client]++;
		CPrintToChat(client, "%t", "SpeedGradientYellow", g_szChatPrefix);
	} else if (g_SpeedGradient[client] == 4) {
		g_SpeedGradient[client]++;
		CPrintToChat(client, "%t", "SpeedGradientMomentum", g_szChatPrefix);
	}else if (g_SpeedGradient[client] == 5) {
		g_SpeedGradient[client]++;
		CPrintToChat(client, "%t", "SpeedGradientCustom", g_szChatPrefix);
	} else {
		g_SpeedGradient[client] = 0;
		CPrintToChat(client, "%t", "SpeedGradientWhite", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_ChangeStartSide(int client, int args) {
	if (g_iTeleSide[client] == 0) {
		g_iTeleSide[client] = 1;
		CPrintToChat(client, "%t", "StartSideRight", g_szChatPrefix);
	} else {
		g_iTeleSide[client] = 0;
		CPrintToChat(client, "%t", "StartSideLeft", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_ToggleQuake(int client, int args) {
	if (g_bEnableQuakeSounds[client]) {
		g_bEnableQuakeSounds[client] = false;
		CPrintToChat(client, "%t", "QuakeToggleOff", g_szChatPrefix);
	} else {
		g_bEnableQuakeSounds[client] = true;
		CPrintToChat(client, "%t", "QuakeToggleOn", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_ToggleWrcps(int client, int args) {
	if (g_iWrcpMessages[client]) {
		g_iWrcpMessages[client] = false;
		CPrintToChat(client, "%t", "ToggleWrcpsMessageToggleOff", g_szChatPrefix);
	} else {
		g_iWrcpMessages[client] = true;
		CPrintToChat(client, "%t", "ToggleWrcpsMessageToggleOn", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_ToggleCps(int client, int args) {
	if (g_iCpMessages[client]) {
		g_iCpMessages[client] = false;
		CPrintToChat(client, "%t", "ToggleCpsMessageToggleOff", g_szChatPrefix);
	} else {
		g_iCpMessages[client] = true;
		CPrintToChat(client, "%t", "ToggleCpsMessageToggleOn", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_SilentSpec(int client, int args) {
	if (!IsPlayerVip(client, _, true)) return Plugin_Handled;
	
	if (g_iSilentSpectate[client]) {
		g_iSilentSpectate[client] = false;
		CPrintToChat(client, "%t", "SilentSpecMessageToggleOff", g_szChatPrefix);
	} else {
		g_iSilentSpectate[client] = true;
		CPrintToChat(client, "%t", "SilentSpecMessageToggleOn", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_Prestrafe(int client, int args) {
	if (g_iPrespeedText[client]) {
		g_iPrespeedText[client] = false;
		CPrintToChat(client, "%t", "PrestrafeMessageToggleOff", g_szChatPrefix);
	} else {
		g_iPrespeedText[client] = true;
		CPrintToChat(client, "%t", "PrestrafeMessageToggleOn", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_ToggleHints(int client, int args)
{
	if (g_bAllowHints[client]) {
		g_bAllowHints[client] = false;
		CPrintToChat(client, "%t", "HintsToggleOff", g_szChatPrefix);
	} else {
		g_bAllowHints[client] = true;
		CPrintToChat(client, "%t", "HintsToggleOn", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_PRinfo_help(int client, int args){

	if(IsValidClient(client)){
		PrintToConsole(client, "%t", "PRinfo_help");
		CPrintToChat(client, "%t", "PRinfo_help_chat", g_szChatPrefix);
	}

	return Plugin_Handled;

}

public Action Command_DeleteRecords(int client, int args)
{
	if(args > 0)
	{
		char sqlStripped[128];
		GetCmdArg(1, sqlStripped, 128);
		SQL_EscapeString(g_hDb, sqlStripped, g_EditingMap[client], 256);
	} else
		Format(g_EditingMap[client], 256, g_szMapName);
	
	ShowMainDeleteMenu(client);
	return Plugin_Handled;
}

public void ShowMainDeleteMenu(int client)
{
	Menu editing = new Menu(ShowMainDeleteMenuHandler);
	editing.SetTitle("%s 记录编辑菜单 - %s\n► 选择要删除的记录类型\n ", g_szMenuPrefix, g_EditingMap[client]);
	
	editing.AddItem("0", "地图记录");
	editing.AddItem("1", "关卡记录");
	editing.AddItem("2", "奖励记录");
	
	editing.Display(client, MENU_TIME_FOREVER);
}

public int ShowMainDeleteMenuHandler(Menu menu, MenuAction action, int client, int key)
{
	if(action == MenuAction_Select)
	{
		g_SelectedEditOption[client] = key;
		g_SelectedStyle[client] = 0;
		g_SelectedType[client] = 1;
		
		char szQuery[512];
		
		switch(key)
		{
			case 0:
			{
				FormatEx(szQuery, 512, sql_MainEditQuery, "runtimepro", "ck_playertimes", g_EditingMap[client], g_SelectedStyle[client], "", "runtimepro");
			}
			case 1:
			{
				char stageQuery[32];
				FormatEx(stageQuery, 32, "AND stage='%i' ", g_SelectedType[client]);
				FormatEx(szQuery, 512, sql_MainEditQuery, "runtimepro", "ck_wrcps", g_EditingMap[client], g_SelectedStyle[client], stageQuery, "runtimepro");
			}
			case 2:
			{
				char stageQuery[32];
				FormatEx(stageQuery, 32, "AND zonegroup='%i' ", g_SelectedType[client]);
				FormatEx(szQuery, 512, sql_MainEditQuery, "runtime", "ck_bonus", g_EditingMap[client], g_SelectedStyle[client], stageQuery, "runtime");
			}
		}
		
		// PrintToServer(szQuery); // Can we please NOT do this?
		SQL_TQuery(g_hDb, sql_DeleteMenuView, szQuery, GetClientSerial(client));
	}
	else if(action == MenuAction_End)
		delete menu;

	return 0;
}

void CreateCommandListeners()
{
	// Chat command listener
	AddCommandListener(Say_Hook, "say");
	HookUserMessage(GetUserMessageId("SayText2"), SayText2, true);
	AddCommandListener(Say_Hook, "say_team");

	AddCommandListener(Command_JoinTeam, "jointeam");
	AddCommandListener(Command_ext_Menu, "radio1");
	AddCommandListener(Command_ext_Menu, "radio2");
	AddCommandListener(Command_ext_Menu, "radio3");

	// Hook radio commands
	for (int g; g < sizeof(RadioCMDS); g++)
		AddCommandListener(BlockRadio, RadioCMDS[g]);
}

public Action sm_test(int client, int args)
{
	char arg[128];
	char found[128];
	GetCmdArg(1, arg, 128);
	FindMap(arg, found, 128);
	CPrintToChat(client, "arg: %s | found: %s", arg, found);
	return Plugin_Handled;
}

public Action Client_GetVelocity(int client, int args)
{
	float CurVelVec[3];
	GetEntPropVector(client, Prop_Data, "m_vecVelocity", CurVelVec);
	CPrintToChat(client, "%t", "Commands1", g_szChatPrefix, CurVelVec[0], CurVelVec[1], CurVelVec[2]);

	return Plugin_Handled;
}

public Action Client_TargetName(int client, int args)
{
	char szTargetName[128];
	char szClassName[128];
	GetEntPropString(client, Prop_Data, "m_iName", szTargetName, sizeof(szTargetName));
	GetEntityClassname(client, szClassName, 128);
	CPrintToChat(client, "%t", "Commands2", g_szChatPrefix, szTargetName);
	CPrintToChat(client, "%t", "Commands3", g_szChatPrefix, szClassName);

	return Plugin_Handled;
}

public Action Command_Vip(int client, int args)
{
	return Plugin_Handled;
}

public void CustomTitleMenu(int client)
{
	if (!IsPlayerVip(client))
		return;

	char szName[64], szSteamID[32], szColour[3][96], szTitle[256], szItem[128], szItem2[128];

	GetClientName(client, szName, 64);
	getSteamIDFromClient(client, szSteamID, 32);
	getColourName(client, szColour[0], 32, g_iCustomColours[client][0]);
	getColourName(client, szColour[1], 32, g_iCustomColours[client][1]);

	Format(szTitle, 256, "自定义称号菜单：%s\n自定义称号：%s\n \n", szName, g_szCustomTitle[client]);
	Format(szItem, 128, "名称颜色：%s", szColour[0]);
	Format(szItem2, 128, "文本颜色：%s", szColour[1]);

	Menu menu = CreateMenu(CustomTitleMenuHandler);
	SetMenuTitle(menu, szTitle);

	AddMenuItem(menu, "名称颜色", szItem);
	AddMenuItem(menu, "文本颜色", szItem2);
	if (g_bDbCustomTitleInUse[client])
		AddMenuItem(menu, "禁用", "禁用自定义称号");
	else
		AddMenuItem(menu, "启用", "启用自定义称号");

	SetMenuOptionFlags(menu, MENUFLAG_BUTTON_EXIT);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int CustomTitleMenuHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		switch (param2)
		{
			case 0, 1: db_viewPlayerColours(param1, g_szSteamID[param1], param2);
			case 2: db_toggleCustomPlayerTitle(param1);
		}
	}
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public Action Command_VoteExtend(int client, int args)
{
	if (!IsValidClient(client) || !IsPlayerVip(client, _, true))
		return Plugin_Handled;

	VoteExtend(client);
	return Plugin_Handled;
}

public void VoteExtend(int client)
{
	int timeleft;
	GetMapTimeLeft(timeleft);

	if (timeleft > 300)
	{
		CPrintToChat(client, "%t", "Commands4", g_szChatPrefix);
		return;
	}

	if (IsVoteInProgress())
	{
		CPrintToChat(client, "%t", "Commands5", g_szChatPrefix);
		return;
	}

	char szPlayerName[MAX_NAME_LENGTH];
	GetClientName(client, szPlayerName, MAX_NAME_LENGTH);

	Menu menu = CreateMenu(Handle_VoteMenuExtend);
	SetMenuTitle(menu, "是否延长该地图10分钟？");
	AddMenuItem(menu, "###yes###", "同意");
	AddMenuItem(menu, "###no###", "拒绝");
	SetMenuExitButton(menu, false);
	VoteMenuToAll(menu, 20);
	CPrintToChatAll("%t", "VoteStartedBy", g_szChatPrefix, szPlayerName);

	return;
}

public Action Command_normalMode(int client, int args)
{
    if (!IsValidClient(client))
        return Plugin_Handled;

    Client_Stop(client, 1);

    if (g_bPracticeMode[client])
        g_bPracticeMode[client] = false;

    g_iCurrentStyle[client] = 0;
    g_iInitalStyle[client] = 0;
    Format(g_szInitalStyle[client], 128, "Normal");
    Format(g_szStyleHud[client], 32, "");
    g_bRankedStyle[client] = true;
    g_bFunStyle[client] = false;

    Command_Restart(client, 1);

    CPrintToChat(client, "%t", "PracticeNormal", g_szChatPrefix);
    return Plugin_Handled;
}

public Action Command_createPlayerCheckpoint(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;
	
	int iMode = GetEntProp(client, Prop_Send, "m_iObserverMode");
	if ((GetClientTeam(client) == CS_TEAM_SPECTATOR || !IsPlayerAlive(client)) && (iMode != 4 && iMode != 5)) // 0 - None, 4 - First Person, 5 - Third Person, 6 - Freelook
	{
		CPrintToChat(client, "%t", "InvalidObserverMode", g_szChatPrefix);
		return Plugin_Handled;
	}
	
	int playerType;
	int player;
	int ObservedUser;
	
	ObservedUser = GetEntPropEnt(client, Prop_Send, "m_hObserverTarget");

	if (!g_bSpectate[client])
	{
		playerType = 1;
	}
	else
	{
		playerType = 2;
	}

	switch (playerType)
	{
		case 1: player = client;
		case 2: player = ObservedUser;
	}

	if (!player)
	{
		CPrintToChat(client, "%t", "Commands10", g_szChatPrefix);
		return Plugin_Handled;
	}

	if (!g_bSaveLocTele[player])
	{
		if (g_iClientInZone[player][0] == 1 || g_iClientInZone[player][0] == 5)
		{
			CPrintToChat(client, "%t", "PracticeInStartZone", g_szChatPrefix);
			return Plugin_Handled;
		}
	}
	
	if ((GetGameTime() - g_fLastCheckpointMade[client]) < 1.0)
		return Plugin_Handled;

	if (g_iSaveLocCount[client] < MAX_LOCS)
	{
		g_iSaveLocCount[client]++;
		
		GetClientAbsOrigin(client, g_fSaveLocCoords[client][g_iSaveLocCount[client]]);
		GetClientEyeAngles(client, g_fSaveLocAngle[client][g_iSaveLocCount[client]]);
		GetEntPropVector(client, Prop_Data, "m_vecVelocity", g_fSaveLocVel[client][g_iSaveLocCount[client]]);
		GetEntPropString(client, Prop_Data, "m_iName", g_szSaveLocTargetname[g_iSaveLocCount[client]], sizeof(g_szSaveLocTargetname));
		
		g_iPreviousSaveLocIdClient[client] = g_iLastSaveLocIdClient[client];
		g_iLastSaveLocIdClient[client] = g_iSaveLocCount[client];


		// Save stage/checkpoint player was in when creating saveloc
		if (g_bPracticeMode[player])
		{
			if (g_bSaveLocTele[player]) // Has the player teleported to saveloc?
			{
				g_iPlayerPracLocationSnap[client][g_iLastSaveLocIdClient[client]] = g_iPlayerPracLocationSnap[player][g_iPlayerPracLocationSnapIdClient[player]];
			}
			else
			{
				if (g_bhasStages)
				{
					g_iPlayerPracLocationSnap[client][g_iLastSaveLocIdClient[client]] = g_Stage[g_iClientInZone[player][2]][player];
				}
				else
				{
					g_iPlayerPracLocationSnap[client][g_iLastSaveLocIdClient[client]] = g_iCurrentCheckpoint[player] + 1;
				}
			}
		}
		else
		{
			if (g_bhasStages)
			{
				g_iPlayerPracLocationSnap[client][g_iLastSaveLocIdClient[client]] = g_Stage[g_iClientInZone[player][2]][player];
			}
			else
			{
				g_iPlayerPracLocationSnap[client][g_iLastSaveLocIdClient[client]] = g_iCurrentCheckpoint[player] + 1;
			}
		}

		// Save players time when creating saveloc
		if (g_bTimerRunning[player])
		{	
			if (!g_bPracticeMode[player])
			{
				g_fPlayerPracTimeSnap[client][g_iLastSaveLocIdClient[client]] = GetClientTickTime(player) - g_fStartTime[player] - g_fPauseTime[player];
			}
			else
			{
				if (g_iPreviousSaveLocIdClient[player] == g_iLastSaveLocIdClient[player]) // Did player Tele to earlier saveloc?
				{
					g_fPlayerPracTimeSnap[client][g_iLastSaveLocIdClient[client]] = (GetClientTickTime(player) - g_fPracModeStartTime[player] - g_fPauseTime[player]) + g_fPlayerPracTimeSnap[player][g_iLastSaveLocIdClient[player] - 1];	
				}
				else
				{
					g_fPlayerPracTimeSnap[client][g_iLastSaveLocIdClient[client]] = (GetClientTickTime(player) - g_fPracModeStartTime[player] - g_fPauseTime[player]) + g_fPlayerPracTimeSnap[player][g_iPreviousSaveLocIdClient[player]];
				}

				g_fPracModeStartTime[client] = GetClientTickTime(player);
			}
		}
		else if (g_bWrcpTimeractivated[player])
		{
			if (!g_bPracticeMode[player])
			{
				g_fPlayerPracTimeSnap[client][g_iLastSaveLocIdClient[client]] = GetClientTickTime(player) - g_fStartWrcpTime[player] - g_fPauseTime[player];
			}
			else
			{
				if (g_iPreviousSaveLocIdClient[player] == g_iLastSaveLocIdClient[player]) // Did player Tele to earlier saveloc?
				{
					g_fPlayerPracTimeSnap[client][g_iLastSaveLocIdClient[client]] = (GetClientTickTime(player) - g_fStartWrcpTime[player] - g_fPauseTime[player]) + g_fPlayerPracTimeSnap[player][g_iLastSaveLocIdClient[player] - 1];	
				}
				else
				{
					g_fPlayerPracTimeSnap[client][g_iLastSaveLocIdClient[client]] = (GetClientTickTime(player) - g_fStartWrcpTime[player] - g_fPauseTime[player]) + g_fPlayerPracTimeSnap[player][g_iPreviousSaveLocIdClient[player]];
				}

				g_fPracModeStartTime[client] = GetClientTickTime(player);
			}
		}

		// Save players Prac Srcp time when creating saveloc
		if (g_bPracSrcpTimerActivated[player])
		{
			if (!g_bPracticeMode[player])
			{
				g_fPlayerPracSrcpTimeSnap[client][g_iLastSaveLocIdClient[client]] = GetClientTickTime(player) - g_fStartPracSrcpTime[player] - g_fPauseTime[player];
			}
			else
			{
				if (g_iPreviousSaveLocIdClient[player] == g_iLastSaveLocIdClient[player]) // Did player Tele to earlier saveloc?
				{	
					g_fPlayerPracSrcpTimeSnap[client][g_iLastSaveLocIdClient[client]] = (GetClientTickTime(player) - g_fStartPracSrcpTime[player] - g_fPauseTime[player]) + g_fPlayerPracSrcpTimeSnap[player][g_iLastSaveLocIdClient[player] - 1];
				}
				else
				{
					g_fPlayerPracSrcpTimeSnap[client][g_iLastSaveLocIdClient[client]] = (GetClientTickTime(player) - g_fStartPracSrcpTime[player] - g_fPauseTime[player]) + g_fPlayerPracSrcpTimeSnap[player][g_iPreviousSaveLocIdClient[player]];
				}
			}
		}

		// Save bonus number when creating saveloc in bonus 
		if (player == g_BonusBot)
		{
			g_iSaveLocInBonus[client][g_iSaveLocCount[client]] = g_iClientInZone[g_BonusBot][2];
		}
		else
		{
			if (g_bInBonus[player])
			{
				g_iSaveLocInBonus[client][g_iSaveLocCount[client]] = g_iClientInZone[player][2];
			}
			else
			{
				g_iSaveLocInBonus[client][g_iSaveLocCount[client]] = 0;
			}	
		}

		CPrintToChat(client, "%t", "Commands7Chat", g_szChatPrefix, g_iSaveLocCount[client]);
		PrintToConsole(client, "%t", "Commands7Console", g_iSaveLocCount[client]);

		int iAllowCheckpointRecreation = GetConVarInt(g_hAllowCheckpointRecreation);

		if (iAllowCheckpointRecreation != 0)
		{
			int id = g_iSaveLocCount[client];

			if (iAllowCheckpointRecreation == 1 || iAllowCheckpointRecreation == 3)
			{
				CPrintToChat(client, "%t", "CheckpointRecreationToChat", RoundToNearest(g_fSaveLocCoords[player][id][0]), RoundToNearest(g_fSaveLocCoords[player][id][1]), RoundToNearest(g_fSaveLocCoords[player][id][2]), RoundToNearest(g_fSaveLocAngle[player][id][0]), RoundToNearest(g_fSaveLocAngle[player][id][1]), RoundToNearest(g_fSaveLocAngle[player][id][2]), RoundToNearest(g_fSaveLocVel[player][id][0]), RoundToNearest(g_fSaveLocVel[player][id][1]), RoundToNearest(g_fSaveLocVel[player][id][2]), g_iPlayerPracLocationSnap[player][id], g_fPlayerPracTimeSnap[player][id], g_fPracModeStartTime[player], g_fPlayerPracSrcpTimeSnap[player][id], g_fStartPracSrcpTime[player], g_iSaveLocInBonus[player][id]);
			}
			
			if (iAllowCheckpointRecreation == 2 || iAllowCheckpointRecreation == 3)
			{
				PrintToConsole(client, "%t", "CheckpointRecreationToConsole", g_iSaveLocCount[player], RoundToNearest(g_fSaveLocCoords[player][id][0]), RoundToNearest(g_fSaveLocCoords[player][id][1]), RoundToNearest(g_fSaveLocCoords[player][id][2]), RoundToNearest(g_fSaveLocAngle[player][id][0]), RoundToNearest(g_fSaveLocAngle[player][id][1]), RoundToNearest(g_fSaveLocAngle[player][id][2]), RoundToNearest(g_fSaveLocVel[player][id][0]), RoundToNearest(g_fSaveLocVel[player][id][1]), RoundToNearest(g_fSaveLocVel[player][id][2]), g_iPlayerPracLocationSnap[player][id], g_fPlayerPracTimeSnap[player][id], g_fPracModeStartTime[player], g_fPlayerPracSrcpTimeSnap[player][id], g_fStartPracSrcpTime[player], g_iSaveLocInBonus[player][id]);
			}
		}

		g_fLastCheckpointMade[client] = GetGameTime();
		g_iSaveLocUnix[g_iSaveLocCount[client]][client] = GetTime();

		GetClientName(client, g_szSaveLocClientName[client][g_iSaveLocCount[client]], MAX_NAME_LENGTH);
	}
	else
	{
		CPrintToChat(client, "%t", "Commands8", g_szChatPrefix);
	}

	return Plugin_Handled;
}

public Action Command_goToPlayerCheckpoint(int client, int args)
{
	if (!IsValidClient(client))
	{
		return Plugin_Handled;
	}

	if (g_bSpectate[client])
	{
		CPrintToChat(client, "%t", "PracticeInSpectate", g_szChatPrefix);
		return Plugin_Handled;
	}

	if (g_iSaveLocCount[client] > 0)
	{	
		g_bSaveLocTele[client] = true;
		
		// This bypasses checkpoint enforcer when in PracMode as players wont always be passing all checkpoints
		g_bIsValidRun[client] = true;

		int stage;

		if (args == 0)
		{
			int id = g_iLastSaveLocIdClient[client];
			g_iPlayerPracLocationSnapIdClient[client] = id;
			stage = g_iPlayerPracLocationSnap[client][id];
			
			TeleportToSaveloc(client, id);
		}
		else
		{
			char arg[128];
			char firstChar[2];
			GetCmdArg(1, arg, 128);
			Format(firstChar, 2, arg[0]);
			if (!StrEqual(firstChar, "#"))
			{
				CPrintToChat(client, "%t", "Commands9", g_szChatPrefix);
				return Plugin_Handled;
			}

			ReplaceString(arg, 128, "#", "", false);
			int id = StringToInt(arg);

			if (id < 1 || id > MAX_LOCS - 1 || id > g_iSaveLocCount[client])
			{
				CPrintToChat(client, "%t", "Commands10", g_szChatPrefix);
				return Plugin_Handled;
			}

			g_iLastSaveLocIdClient[client] = id;
			g_iPlayerPracLocationSnapIdClient[client] = id;
			stage = g_iPlayerPracLocationSnap[client][id];

			TeleportToSaveloc(client, id);
		}

		g_Stage[g_iClientInZone[client][2]][client] = stage;

		g_iCurrentCheckpoint[client] = g_iPlayerPracLocationSnap[client][g_iLastSaveLocIdClient[client]] -1;

		lastCheckpoint[g_iClientInZone[client][2]][client] = g_iCurrentCheckpoint[client] - 1;
		if (lastCheckpoint[g_iClientInZone[client][2]][client] == -1)
		{
			lastCheckpoint[g_iClientInZone[client][2]][client] = 999;
		}
	}
	else
	{
		CPrintToChat(client, "%t", "Commands11", g_szChatPrefix);
	}

	return Plugin_Handled;
}

public Action Command_recreatePlayerCheckpoint(int client, int args)
{
	if (GetConVarInt(g_hAllowCheckpointRecreation) == 0)
	{
		CReplyToCommand(client, "%t", "CheckpointRecreationNotAllowed", g_szChatPrefix);
		return Plugin_Handled;
	}

	if ((GetGameTime() - g_fLastCheckpointMade[client]) < 1.0)
		return Plugin_Handled;

	if (g_iSaveLocCount[client] < MAX_LOCS)
	{
		g_iSaveLocCount[client]++;
		int id = g_iSaveLocCount[client];
		g_iLastSaveLocIdClient[client] = id;

		char szBuffer[256];
		char input[15][32]; 
		GetCmdArgString(szBuffer, sizeof(szBuffer));

		int inputSize;
		inputSize = ExplodeString(szBuffer, "|", input, sizeof(input), sizeof(input[]));

		if (inputSize == 15)
		{
			// Coords
			g_fSaveLocCoords[client][id][0] = (StringToInt(input[0]) / 1.0);
			g_fSaveLocCoords[client][id][1] = (StringToInt(input[1]) / 1.0);
			g_fSaveLocCoords[client][id][2] = (StringToInt(input[2]) / 1.0);
			
			// Angle
			g_fSaveLocAngle[client][id][0] = (StringToInt(input[3]) / 1.0);
			g_fSaveLocAngle[client][id][1] = (StringToInt(input[4]) / 1.0);
			g_fSaveLocAngle[client][id][2] = (StringToInt(input[5]) / 1.0);

			// Vel
			g_fSaveLocVel[client][id][0] = (StringToInt(input[6]) / 1.0);
			g_fSaveLocVel[client][id][1] = (StringToInt(input[7]) / 1.0);
			g_fSaveLocVel[client][id][2] = (StringToInt(input[8]) / 1.0);

			// Times
			g_iPlayerPracLocationSnap[client][id] = StringToInt(input[9]);
			g_fPlayerPracTimeSnap[client][id] = StringToFloat(input[10]);
			g_fPracModeStartTime[client] = StringToFloat(input[11]);
			g_fPlayerPracSrcpTimeSnap[client][id] = StringToFloat(input[12]);
			g_fStartPracSrcpTime[client] = StringToFloat(input[13]);

			// In bonus?
			g_iSaveLocInBonus[client][id] = StringToInt(input[14]);

			g_iSaveLocUnix[id][client] = GetTime();
			g_fLastCheckpointMade[client] = GetGameTime();

			CReplyToCommand(client, "%t", "Commands7Added", g_szChatPrefix, id);
			
			Command_goToPlayerCheckpoint(client, 0);
		}
		else
		{
			CReplyToCommand(client, "%t", "CheckpointRecreationUnable", g_szChatPrefix);
		}
	}

	return Plugin_Handled;
}

public Action Command_clearPlayerCheckpoints(int client, int args)
{
	if (g_iSaveLocCount[client] == 0)
	{
		CPrintToChat(client, "%t", "Commands12", g_szChatPrefix);
		return Plugin_Handled;
	}
	else
	{
		for (int i = 0; i < g_iSaveLocCount[client]; i++)
		{
			g_iPlayerPracLocationSnap[client][i] = 0;
			g_fPlayerPracTimeSnap[client][i] = 0.0;
			g_fPlayerPracSrcpTimeSnap[client][i] = 0.0;
		}

		for (int i = 0; i < MAX_LOCS; i++)
		{
			g_iSaveLocInBonus[client][i] = 0;
		}

		g_iLastSaveLocIdClient[client] = 0;
		g_iPreviousSaveLocIdClient[client] = 0;
		g_iSaveLocCount[client] = 0;

		CPrintToChat(client, "%t", "Commands14", g_szChatPrefix);
		Command_Restart(client, 1);
		
		return Plugin_Handled;
	}
}

public Action Command_SaveLocList(int client, int args)
{
	if (g_iSaveLocCount[client] < 1)
	{
		CPrintToChat(client, "%t", "Commands11", g_szChatPrefix);
		return Plugin_Handled;
	}

	SaveLocMenu(client);

	return Plugin_Handled;
}

public void SaveLocMenu(int client)
{
	Menu menu = CreateMenu(SaveLocListHandler);
	SetMenuTitle(menu, "保存的检查点");
	char szBuffer[128];
	char szItem[256];
	char szId[32];
	char szTime[32];
	int unix;
	for (int i = 1; i <= g_iSaveLocCount[client]; i++)
	{
		unix = GetTime() - g_iSaveLocUnix[i][client];
		diffForHumans(unix, szBuffer, 128, 1);
		FormatTimeFloat(client, g_fPlayerPracTimeSnap[client][i], 3, szTime, sizeof(szTime));
		Format(szItem, sizeof(szItem), "#%d %s - %s", i, szTime, szBuffer); //TODO add speed
		IntToString(i, szId, 32);
		AddMenuItem(menu, szId, szItem);
	}

	int pos = g_iMenuPosition[client];
	if (pos < 6)
		pos = 0;
	else if (pos < 12)
		pos = 6;
	else if (pos < 18)
		pos = 12;
	else if (pos < 24)
		pos = 18;
	else if (pos < 30)
		pos = 24;
	else if (pos < 36)
		pos = 30;
	else if (pos < 42)
		pos = 36;
	else if (pos < 48)
		pos = 42;
	else if (pos < 54)
		pos = 48;
	else if (pos < 60)
		pos = 54;
	SetMenuOptionFlags(menu, MENUFLAG_BUTTON_EXIT);
	DisplayMenuAtItem(menu, client, pos, MENU_TIME_FOREVER);
}

public int SaveLocListHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		g_iMenuPosition[param1] = param2;
		char szId[32];
		GetMenuItem(menu, param2, szId, 32);
		int id = StringToInt(szId);
		CPrintToChat(param1, "%t", "Commands13", g_szChatPrefix, id);
		TeleportToSaveloc(param1, id);
		SaveLocMenu(param1);
	}
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public Action Command_Teleport(int client, int args)
{
	g_bWrcpTimeractivated[client] = false;

	// Throttle using !back to fix errors with replays
	if ((GetGameTime() - g_fLastCommandBack[client]) < 1.0)
		return Plugin_Handled;

	g_fLastCommandBack[client] = GetGameTime();

	if (g_Stage[g_iClientInZone[client][2]][client] == 1)
	{
		// fluffys
		if (g_bPause[client] == true)
			PauseMethod(client);

		teleportClient(client, g_iClientInZone[client][2], 1, false);
		return Plugin_Handled;
	}

	// fluffys
	if (g_bPause[client] == true)
		PauseMethod(client);

	teleportClient(client, g_iClientInZone[client][2], g_Stage[g_iClientInZone[client][2]][client], false);

	return Plugin_Handled;
}

public Action Command_HowTo(int client, int args)
{
	ShowMOTDPanel(client, "How To Surf", "https://skins.cash/blog/surf-in-csgo/", MOTDPANEL_TYPE_URL);
	return Plugin_Handled;
}

public Action Command_Zones(int client, int args)
{
	if (IsValidClient(client))
	{
		ZoneMenu(client);
		resetSelection(client);
	}
	return Plugin_Handled;
}

public Action Command_ListBonuses(int client, int args)
{
	if (IsValidClient(client))
	{
		ListBonuses(client, 1);
	}
	return Plugin_Handled;
}

public void ListBonuses(int client, int type)
{
	// Types: Start(1), End(2), Stage(3), Checkpoint(4), Speed(5), TeleToStart(6), Validator(7), Chekcer(8), Stop(0)
	char buffer[3];
	Menu listBonusesMenu;
	if (type == 1)
	{
		listBonusesMenu = new Menu(MenuHandler_SelectBonus);
	}
	else
	{
		listBonusesMenu = new Menu(MenuHandler_SelectBonusTop);
	}

	listBonusesMenu.SetTitle("选择一个奖励");

	if (g_mapZoneGroupCount > 1)
	{
		for (int i = 1; i < g_mapZoneGroupCount; i++)
		{
			IntToString(i, buffer, 3);
			listBonusesMenu.AddItem(buffer, g_szZoneGroupName[i]);
		}
	}
	else
	{
		CPrintToChat(client, "%t", "NoBonusOnMap", g_szChatPrefix);
		return;
	}

	listBonusesMenu.ExitButton = true;
	listBonusesMenu.Display(client, 60);
}

public int MenuHandler_SelectBonusTop(Menu sMenu, MenuAction action, int client, int item)
{
	switch (action)
	{
		case MenuAction_Select:
		{
			char aID[3];
			GetMenuItem(sMenu, item, aID, sizeof(aID));
			int zoneGrp = StringToInt(aID);
			db_selectBonusTopSurfers(client, g_szMapName, zoneGrp, 0);
		}
		case MenuAction_End:
		{
			delete sMenu;
		}
	}

	return 0;
}

public int MenuHandler_SelectBonus(Menu sMenu, MenuAction action, int client, int item)
{
	switch (action)
	{
		case MenuAction_Select:
		{
			char aID[3];
			GetMenuItem(sMenu, item, aID, sizeof(aID));
			int zoneGrp = StringToInt(aID);
			g_bInBonus[client] = true;
			g_iInBonus[client] = zoneGrp;
			teleportClient(client, zoneGrp, 1, true);
		}
		case MenuAction_End:
		{
			delete sMenu;
		}
	}

	return 0;
}

public Action Command_ToBonus(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	if (g_mapZoneGroupCount < 2)
	{
		CPrintToChat(client, "%t", "NoBonusOnMap", g_szChatPrefix);
		return Plugin_Handled;
	}

	// If not enough arguments, or there is more than one bonus
	if (args < 1 && g_mapZoneGroupCount > 2) // Tell player to select specific bonus
	{
		ListBonuses(client, 1);
		return Plugin_Handled;
	}

	int zoneGrp;
	if (g_mapZoneGroupCount > 2) // If there is more than one bonus in the map, get the zGrp from command
	{
		char arg1[3];
		GetCmdArg(1, arg1, sizeof(arg1));

		if (!arg1[0])
			zoneGrp = args;
		else
			zoneGrp = StringToInt(arg1);

		if (zoneGrp == 0) {
			Command_Restart(client, 1);
			return Plugin_Handled;
		}
	}
	else
		zoneGrp = 1;

	g_bInBonus[client] = true;
	if (g_mapZoneGroupCount > zoneGrp)
		g_iInBonus[client] = zoneGrp;
	teleportClient(client, zoneGrp, 1, true);

	if (g_bPracticeMode[client])
	{
		g_bPracticeMode[client] = false;
		CPrintToChat(client, "%t", "PracticeNormal", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Command_SelectStage(int client, int args)
{
	if (IsValidClient(client))
		ListStages(client, g_iClientInZone[client][2]);
	return Plugin_Handled;
}

public void ListStages(int client, int zonegroup)
{
	// Types: Start(1), End(2), Stage(3), Checkpoint(4), Speed(5), TeleToStart(6), Validator(7), Chekcer(8), Stop(0)
	Menu sMenu = CreateMenu(MenuHandler_SelectStage);
	SetMenuTitle(sMenu, "关卡选择器");
	int amount = 0;
	char StageName[64], ZoneInfo[6];

	int StageIds[MAXZONES] = { -1, ... };

	if (g_mapZonesCount > 0)
	{
		for (int i = 0; i <= g_mapZonesCount; i++)
		{
			if (g_mapZones[i].ZoneType == 3 && g_mapZones[i].ZoneGroup == zonegroup)
			{
				StageIds[amount] = i;
				amount++;
			}
		}
		if (amount == 0)
		{
			CPrintToChat(client, "%t", "Commands87", g_szChatPrefix);
		}
		else
		{
			amount = 0;
			for (int t = 0; t < 128; t++)
			{
				if (StageIds[t] >= 0)
				{
					amount++;
					Format(StageName, sizeof(StageName), "关卡 %i", (amount + 1));
					IntToString(amount + 1, ZoneInfo, 6);
					AddMenuItem(sMenu, ZoneInfo, StageName);
				}
			}
		}
	}
	else
	{
		AddMenuItem(sMenu, "", "无可用的关卡", ITEMDRAW_DISABLED);
	}

	SetMenuExitButton(sMenu, true);
	DisplayMenu(sMenu, client, MENU_TIME_FOREVER);
}

public int MenuHandler_SelectStage(Menu tMenu, MenuAction action, int client, int item)
{
	switch (action)
	{
		case MenuAction_Select:
		{
			char aID[64];
			GetMenuItem(tMenu, item, aID, sizeof(aID));
			int id = StringToInt(aID);
			teleportClient(client, g_iClientInZone[client][2], id, true);
			g_Stage[g_iClientInZone[client][2]][client] = id;
		}
		case MenuAction_End:
		{
			delete tMenu;
		}
	}

	return 0;
}

public Action Command_ToStage(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	if (RateLimitTeleport(client))
		return Plugin_Handled;

	g_fPauseTime[client] = 0.0;
	g_fSrcpPauseTime[client] = 0.0;
	
	if (args < 1)
	{
		// Remove chat output to reduce chat spam
		g_bInStartZone[client] = false;
		g_bUsingStageTeleport[client] = true;
		teleportClient(client, 0, 1, true);
	}
	else
	{
		char arg1[3];
		// g_bInStartZone[client] = false;
		g_bUsingStageTeleport[client] = true;
		GetCmdArg(1, arg1, sizeof(arg1));
		int StageId = StringToInt(arg1);
		if (StageId == 3)
		{
			if(getZoneID(0, StageId) == -1) {
				CPrintToChat(client, "%T", "InvalidMapNoStages", client, g_szChatPrefix);
				return Plugin_Handled;
			}

			g_bWrcpTimeractivated[client] = false;
			teleportClient(client, 0, 3, true);
			g_Stage[0][client] = 3;
			g_CurrentStage[client] = 3;
			return Plugin_Handled;
		}
		teleportClient(client, 0, StageId, true);
	}

	if (g_bPracticeMode[client])
	{
		g_bPracticeMode[client] = false;
		CPrintToChat(client, "%t", "PracticeNormal", g_szChatPrefix);
	}

	return Plugin_Handled;
}

public Action Command_ToEnd(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	if (!GetConVarBool(g_hCommandToEnd))
	{
		CReplyToCommand(client, "%t", "Commands71", g_szChatPrefix);
		return Plugin_Handled;
	}
	teleportClient(client, g_iClientInZone[client][2], -1, true);
	return Plugin_Handled;
}

public Action Command_Restart(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	if (RateLimitTeleport(client))
		return Plugin_Handled;

	if (GetConVarBool(g_hDoubleRestartCommand) && args == 0)
	{
		if (GetGameTime() - g_fClientRestarting[client] > 5.0)
			g_bClientRestarting[client] = false;

		// Check that the client has a timer running, the zonegroup he is in has stages and that this is the first click
		if (IsValidClient(client) && g_bTimerRunning[client] && g_mapZonesTypeCount[g_iClientInZone[client][2]][3] > 0 && !g_bClientRestarting[client] && g_Stage[g_iClientInZone[client][2]][client] > 1)
		{
			g_fClientRestarting[client] = GetGameTime();
			g_bClientRestarting[client] = true;
			CPrintToChat(client, "%t", "Commands34", g_szChatPrefix);
			EmitSoundToClientNoPreCache(client, "play ambient/misc/clank4", false);
			return Plugin_Handled;
		}
	}

	g_bClientRestarting[client] = false;
	// fluffys
	if (g_bPause[client] == true)
		PauseMethod(client);

	if (!g_bTimerEnabled[client])
		g_bTimerEnabled[client] = true;

	g_bWrcpTimeractivated[client] = false;
	g_bPracSrcpTimerActivated[client] = false;
	g_bInStageZone[client] = false;
	g_bInStartZone[client] = true;
	g_bLeftZone[client] = false;
	g_bInBhop[client] = false;

	teleportClient(client, 0, 1, true);
	if (g_bPracticeMode[client])
	{
		g_bPracticeMode[client] = false;
		CPrintToChat(client, "%t", "PracticeNormal", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public Action Client_HideChat(int client, int args)
{
	HideChat(client);
	if (g_bHideChat[client])
		CPrintToChat(client, "%t", "HideChat1", g_szChatPrefix);
	else
		CPrintToChat(client, "%t", "HideChat2", g_szChatPrefix);
	return Plugin_Handled;
}

void HideChat(int client, bool menu = false)
{
	if (!g_bHideChat[client])
	{
		// Hiding
		if (g_bViewModel[client])
			SetEntProp(client, Prop_Send, "m_iHideHUD", GetEntProp(client, Prop_Send, "m_iHideHUD") | HIDE_RADAR | HIDE_CHAT);
		else
			SetEntProp(client, Prop_Send, "m_iHideHUD", GetEntProp(client, Prop_Send, "m_iHideHUD") | HIDE_RADAR | HIDE_CHAT);
	}
	else
	{
		// Displaying
		if (g_bViewModel[client])
			SetEntProp(client, Prop_Send, "m_iHideHUD", HIDE_RADAR);
		else
			SetEntProp(client, Prop_Send, "m_iHideHUD", HIDE_RADAR);
	}

	g_bHideChat[client] = !g_bHideChat[client];
	if (menu)
		MiscellaneousOptions(client);
}

public Action ToggleCheckpoints(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	if (g_bCheckpointsEnabled[client])
	{
		g_bCheckpointsEnabled[client] = false;
		if (g_bActivateCheckpointsOnStart[client])
			g_bActivateCheckpointsOnStart[client] = false;
		CPrintToChat(client, "%t", "ToogleCheckpoints1", g_szChatPrefix);
	}
	else
	{
		if (g_bTimerRunning[client])
		{
			CPrintToChat(client, "%t", "ToggleCheckpoints3", g_szChatPrefix);
			g_bActivateCheckpointsOnStart[client] = true;
		}
		else
		{
			g_bCheckpointsEnabled[client] = true;
			CPrintToChat(client, "%t", "ToggleCheckpoints2", g_szChatPrefix);
		}
	}
	return Plugin_Handled;
}

public Action Client_HideWeapon(int client, int args)
{
	HideViewModel(client);
	if (g_bViewModel[client])
		CPrintToChat(client, "%t", "HideViewModel2", g_szChatPrefix);
	else
		CPrintToChat(client, "%t", "HideViewModel1", g_szChatPrefix);
	return Plugin_Handled;
}

void HideViewModel(int client, bool menu = false)
{
	Client_SetDrawViewModel(client, !g_bViewModel[client]);
	if (!g_bViewModel[client])
	{
		// Display
		if (!g_bHideChat[client])
			SetEntProp(client, Prop_Send, "m_iHideHUD", HIDE_RADAR);
		else
			SetEntProp(client, Prop_Send, "m_iHideHUD", HIDE_RADAR | HIDE_CHAT);
	}
	else
	{
		// Hiding
		if (!g_bHideChat[client])
			SetEntProp(client, Prop_Send, "m_iHideHUD", GetEntProp(client, Prop_Send, "m_iHideHUD") | HIDE_RADAR | HIDE_CROSSHAIR);
		else
			SetEntProp(client, Prop_Send, "m_iHideHUD", GetEntProp(client, Prop_Send, "m_iHideHUD") | HIDE_RADAR | HIDE_CHAT | HIDE_CROSSHAIR);
	}


	g_bViewModel[client] = !g_bViewModel[client];
	if (menu)
		MiscellaneousOptions(client);
}

public Action Client_Wr(int client, int args)
{
	RateLimit(client);

	if (IsValidClient(client) && !g_bRateLimit[client])
	{
		if (args == 0)
		{
			PrintWorldRecordStyleSelect(client, 0);
		}
		else
		{
			char arg1[128];
			GetCmdArg(1, arg1, sizeof(arg1));

			db_selectMapRecordTime(client, arg1);
		}
	}

	return Plugin_Handled;
}

public Action Client_Wrb(int client, int args)
{
	if (IsValidClient(client))
		PrintWorldRecordStyleSelect(client, 1);
	return Plugin_Handled;
}

public void PrintWorldRecordStyleSelect(int client, int type)
{
	Menu menu = CreateMenu(PrintWorldRecordStyleSelectHandler);
	SetMenuTitle(menu, "WR(B): 选择风格\n \n");

	char szType[2];
	IntToString(type, szType, sizeof(szType));

	AddMenuItem(menu, szType, "普通");
	AddMenuItem(menu, szType, "侧滑");
	AddMenuItem(menu, szType, "半侧滑");
	AddMenuItem(menu, szType, "倒滑");
	AddMenuItem(menu, szType, "低重力");
	AddMenuItem(menu, szType, "慢速");
	AddMenuItem(menu, szType, "快进");
	AddMenuItem(menu, szType, "Freestyle");

	SetMenuExitButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int PrintWorldRecordStyleSelectHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char szType[2];
		GetMenuItem(menu, param2, szType, sizeof(szType));
		int type = StringToInt(szType);

		if (type == 0)
		{
			// Normal
			if (param2 == 0)
			{
				// Normal
				if (g_fRecordMapTime == 9999999.0)
					CPrintToChat(param1, "%t", "NoRecordTop", g_szChatPrefix);
				else
					PrintMapRecords(param1, 0);
			}
			else
			{
				// Style
				if (g_fRecordStyleMapTime[param2] == 9999999.0)
					CPrintToChat(param1, "%t", "NoRecordTop", g_szChatPrefix);
				else
					PrintMapRecords(param1, param2);
			}
		}
		else
		{
			// Styles
			if (param2 == 0)
			{
				// Normal
				if (g_fBonusFastest[1] == 9999999.0)
					CPrintToChat(param1, "%t", "NoRecordTop", g_szChatPrefix);
				else
					PrintMapRecords(param1, 99);
			}
			else
			{
				// Style
				if (g_fStyleBonusFastest[param2][1] == 9999999.0)
					CPrintToChat(param1, "%t", "NoRecordTop", g_szChatPrefix);
				else
					PrintMapRecords(param1, 990 + param2);
			}
		}
	}
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public Action Command_Tier(int client, int args)
{
	if (IsValidClient(client) && g_bTierFound)
		CPrintToChat(client, "%t", "Timer1", g_szChatPrefix, g_sTierString);
	
	return Plugin_Handled;
}

public Action Client_Avg(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	char szProTime[32];
	FormatTimeFloat(client, g_favg_maptime, 3, szProTime, sizeof(szProTime));

	if (g_MapTimesCount == 0)
		Format(szProTime, 32, "N/A");

	CPrintToChat(client, "%t", "AvgTime", g_szChatPrefix, szProTime, g_MapTimesCount);

	if (g_bhasBonus)
	{
		char szBonusTime[32];

		for (int i = 1; i < g_mapZoneGroupCount; i++)
		{
			FormatTimeFloat(client, g_fAvg_BonusTime[i], 3, szBonusTime, sizeof(szBonusTime));

			if (g_iBonusCount[i] == 0)
				Format(szBonusTime, 32, "N/A");
			CPrintToChat(client, "%t", "AvgTimeBonus", g_szChatPrefix, szBonusTime, g_iBonusCount[i]);
		}
	}

	return Plugin_Handled;
}

public Action Client_Flashlight(int client, int args)
{
	if (IsValidClient(client) && IsPlayerAlive(client))
		SetEntProp(client, Prop_Send, "m_fEffects", GetEntProp(client, Prop_Send, "m_fEffects") ^ 4);
	return Plugin_Handled;
}

public Action Client_Usp(int client, int args)
{
	if (!IsValidClient(client) || !IsPlayerAlive(client))
		return Plugin_Handled;

	if ((GetGameTime() - g_flastClientUsp[client]) < 10.0)
		return Plugin_Handled;

	g_flastClientUsp[client] = GetGameTime();

	SafeDropWeapon(client, CS_SLOT_SECONDARY);
	GivePlayerWeaponAndSkin(client, "weapon_usp_silencer", CS_TEAM_CT);
	return Plugin_Handled;
}

public Action Client_Glock(int client, int args)
{
	if (!IsValidClient(client) || !IsPlayerAlive(client))
		return Plugin_Handled;

	if ((GetGameTime() - g_flastClientUsp[client]) < 10.0)
		return Plugin_Handled;

	g_flastClientUsp[client] = GetGameTime();

	SafeDropWeapon(client, CS_SLOT_SECONDARY);
	GivePlayerWeaponAndSkin(client, "weapon_glock", CS_TEAM_T);
	return Plugin_Handled;
}

public Action Command_ext_Menu(int client, const char[] command, int argc)
{
	return Plugin_Handled;
}

// https://forums.alliedmods.net/showthread.php?t=206308
public Action Command_JoinTeam(int client, const char[] command, int argc)
{
	if (!IsValidClient(client) || argc < 1)
		return Plugin_Handled;
	char arg[4];
	GetCmdArg(1, arg, sizeof(arg));
	int toteam = StringToInt(arg);

	TeamChangeActual(client, toteam);
	return Plugin_Handled;
}

public Action Client_OptionMenu(int client, int args)
{
	OptionMenu(client);
	return Plugin_Handled;
}

public Action NoClip(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	if (g_bTimerEnabled[client])
		{
			g_bTimerEnabled[client] = !g_bTimerEnabled[client];
			CPrintToChat(client, "%t", "Commands19", g_szChatPrefix);
		}

	Action_NoClip(client);

	return Plugin_Handled;
}

public Action UnNoClip(int client, int args)
{

	if (!g_bTimerEnabled[client])
	{
		CPrintToChat(client, "%t", "Commands20", g_szChatPrefix);
	}

	if (g_bNoClip[client] == true)
		Action_UnNoClip(client);

	if (g_iInitalStyle[client] != 4 && IsValidClient(client))
		ResetGravity(client);
	else
		SetEntityGravity(client, 0.5);

	return Plugin_Handled;
}

public Action Command_ckNoClip(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	if (g_bTimerEnabled[client])
		g_bTimerEnabled[client] = false;

	if (!IsPlayerAlive(client))
	{
		CReplyToCommand(client, "%t", "Commands72", g_szChatPrefix);
	}
	else
	{
		MoveType mt = GetEntityMoveType(client);

		if (mt != MOVETYPE_NOCLIP)
		{
			Action_NoClip(client);
		}
		else
		{
			Action_UnNoClip(client);
		}
	}

	return Plugin_Handled;
}

public Action Client_CountryTop_Help(int client, int args){

	if(IsValidClient(client)){
		CPrintToChat(client, "%t", "ctop_help_chat", g_szChatPrefix);
		PrintToConsole(client, "%t", "ctop_help");
	}

	return Plugin_Handled;

}
public Action Client_CountryRank_Help(int client, int args){

	if(IsValidClient(client)){
		CPrintToChat(client, "%t", "crank_help_chat", g_szChatPrefix);
		PrintToConsole(client, "%t", "crank_help");
	}

	return Plugin_Handled;

}

public Action Client_ContinentTop_Help(int client, int args){

	if(IsValidClient(client)){
		CPrintToChat(client, "%t", "continenttop_help_chat", g_szChatPrefix);
		PrintToConsole(client, "%t", "ctop_help");
	}

	return Plugin_Handled;

}
public Action Client_ContinentRank_Help(int client, int args){

	if(IsValidClient(client)){
		CPrintToChat(client, "%t", "continentrank_help_chat", g_szChatPrefix);
		PrintToConsole(client, "%t", "crank_help");
	}

	return Plugin_Handled;

}

public Action Client_StyleAcronyms(int client, int args){

	if(IsValidClient(client)){
		CPrintToChat(client, "%t", "style_acronyms_help_chat", g_szChatPrefix);
		PrintToConsole(client, "%t", "style_acronyms_help");
	}

	return Plugin_Handled;

}

public Action Client_ContinentAcronyms(int client, int args){

	if(IsValidClient(client)){
		CPrintToChat(client, "%t", "continent_acronyms_help_chat", g_szChatPrefix);
		PrintToConsole(client, "%t", "continent_acronyms_help");
	}

	return Plugin_Handled;

}

public Action Client_CountryRank(int client, int args)
{
	if(!IsValidClient(client))
		return Plugin_Handled;

	switch (args){
		case 0 : {
			char szClientName[MAX_NAME_LENGTH];
			GetClientName(client, szClientName, sizeof szClientName);

			db_SelectCountryRank(client, szClientName, g_szCountry[client], g_iCurrentStyle[client]);
		}
		case 1 : {

			char arg1[MAX_NAME_LENGTH];

			GetCmdArg(1, arg1, sizeof arg1);

			//sm_ctop #<style_acronym>
			if (arg1[0] == '#') {
				ReplaceString(arg1, sizeof arg1, "#", "", false);

				ArrayList styles = new ArrayList(32);

				for (int j = 0; j < MAX_STYLES; j++) {
					styles.PushString(g_szStyleAcronyms[j]);
				}

				int style = styles.FindString(arg1);
				delete styles;

				if ( style == -1 ) {
					CPrintToChat(client, "%t", "style_not_found", g_szChatPrefix, MAX_STYLES - 1);
					return Plugin_Handled;
				}

				char szClientName[MAX_NAME_LENGTH];
				GetClientName(client, szClientName, sizeof szClientName);

				db_SelectCountryRank(client, szClientName, g_szCountry[client], style);

				return Plugin_Handled;

			}

			//sm_crank <playername>
			db_SelectCustomPlayerCountryRank(client, arg1, g_iCurrentStyle[client]);
		}
		case 2 : {
			char arg1[MAX_NAME_LENGTH];
			GetCmdArg(1, arg1, sizeof arg1);

			char arg2[MAX_NAME_LENGTH];
			GetCmdArg(2, arg2, sizeof arg2);

			//sm_crank #<style> <playername>
			if (arg1[0] == '#') {
				ReplaceString(arg1, sizeof arg1, "#", "", false);

				ArrayList styles = new ArrayList(32);

				for (int j = 0; j < MAX_STYLES; j++) {
					styles.PushString(g_szStyleAcronyms[j]);
				}

				int style = styles.FindString(arg1);
				delete styles;

				if ( style == -1 ) {
					CPrintToChat(client, "%t", "style_not_found", g_szChatPrefix, MAX_STYLES - 1);
					return Plugin_Handled;
				}

				db_SelectCustomPlayerCountryRank(client, arg2, style);

				return Plugin_Handled;
			}

			//sm_crank <playername> #<style_acronym>
			if (arg2[0] == '#') {
				ReplaceString(arg2, sizeof arg2, "#", "", false);

				ArrayList styles = new ArrayList(32);

				for (int j = 0; j < MAX_STYLES; j++) {
					styles.PushString(g_szStyleAcronyms[j]);
				}

				int style = styles.FindString(arg2);
				delete styles;

				if ( style == -1 ) {
					CPrintToChat(client, "%t", "style_not_found", g_szChatPrefix, MAX_STYLES - 1);
					return Plugin_Handled;
				}

				db_SelectCustomPlayerCountryRank(client, arg1, style);

				return Plugin_Handled;
			}

			CPrintToChat(client, "%t", "crank_help_chat", g_szChatPrefix);
			PrintToConsole(client, "%t", "crank_help");
			PrintToConsole(client, "%t", "style_acronyms_help");	

		}
	}

	return Plugin_Handled;
}

public Action Client_CountryTOP(int client, int args)
{
	char szBuffer[256] = "none-none";

	switch (args) {
		//sm_ctop
		case 0: CountryTopMenuStyleSelect(client, szBuffer);
		//sm_ctop <countryname>
		//sm_ctop #<style_acronym>
		case 1: {
			char arg1[100];
			GetCmdArg(1, arg1, sizeof arg1);

			//sm_ctop #<style_acronym>
			if (arg1[0] == '#') {
				ReplaceString(arg1, sizeof arg1, "#", "", false);

				ArrayList styles = new ArrayList(32);

				for (int j = 0; j < MAX_STYLES; j++) {
					styles.PushString(g_szStyleAcronyms[j]);
				}

				int style = styles.FindString(arg1);
				delete styles;

				if ( style == -1 ) {
					CPrintToChat(client, "%t", "style_not_found", g_szChatPrefix, MAX_STYLES - 1);
					return Plugin_Handled;
				}

				db_GetCountriesNames(client, style);
				return Plugin_Handled;
			}

			//sm_ctop <countryname>
			Format(szBuffer, sizeof szBuffer, "%s-none", arg1);
			CountryTopMenuStyleSelect(client, szBuffer);
		}
		//sm_ctop <countryname> #<style_acronym>
		//sm_ctop #<style_acronym> <countryname>
		case 2: {

			char arg1[100];
			char arg2[100];

			GetCmdArg(1, arg1, sizeof arg1);
			GetCmdArg(2, arg2, sizeof arg2);

			//sm_ctop #<style_acronym> <countryname>
			if (arg1[0] == '#') {
				ReplaceString(arg1, sizeof arg1, "#", "", false);

				ArrayList styles = new ArrayList(32);

				for (int j = 0; j < MAX_STYLES; j++) {
					styles.PushString(g_szStyleAcronyms[j]);
				}

				int style = styles.FindString(arg1);
				delete styles;

				if ( style == -1 ) {
					CPrintToChat(client, "%t", "style_not_found", g_szChatPrefix, MAX_STYLES - 1);
					return Plugin_Handled;
				}

				Format(szBuffer, sizeof szBuffer, "%s-%d", arg2, style);
				CountryTopMenuStyleSelect(client, szBuffer);

				return Plugin_Handled;
			}

			//sm_ctop <countryname> #<style_acronym>
			if (arg2[0] == '#') {
				ReplaceString(arg2, sizeof arg2, "#", "", false);

				ArrayList styles = new ArrayList(32);

				for (int j = 0; j < MAX_STYLES; j++) {
					styles.PushString(g_szStyleAcronyms[j]);
				}

				int style = styles.FindString(arg2);
				delete styles;

				if ( style == -1 ) {
					CPrintToChat(client, "%t", "style_not_found", g_szChatPrefix, MAX_STYLES - 1);
					return Plugin_Handled;
				}

				Format(szBuffer, sizeof szBuffer, "%s-%d", arg1, style);
				CountryTopMenuStyleSelect(client, szBuffer);

				return Plugin_Handled;
			}

			CPrintToChat(client, "%t", "ctop_help_chat", g_szChatPrefix);
			PrintToConsole(client, "%t", "ctop_help");
			PrintToConsole(client, "%t", "style_acronyms_help");
		}
	}

	return Plugin_Handled;
}

public void CountryTopMenuStyleSelect(int client, char szBuffer[256])
{
	char szCountryName[256];
	int style;

	//IF THE PLAYER INSERTED A COUNTRY OR A STYLE SPLIT THE BUFFER STRING AND STORE THE VALUES INDIVIDUAL VARIABLES
	//split[0] -> country
	//split[1] -> style
	if ( strcmp(szBuffer, "none-none", false) != 0 ) {
		char splits[2][256];
		ExplodeString(szBuffer, "-", splits, sizeof(splits), sizeof(splits[]));

		//INSERTED COUNTRY
		if( strcmp(splits[0], "none", false) != 0 ) {
			szCountryName = splits[0];
		}
		
		//INSERTED STYLE
		if( strcmp(splits[1], "none", false) != 0 ) {
			style = StringToInt(splits[1]);
		}

		//IF PLAYER INPUTS COUNTRY NAME AND STYLE THERE IS NO NEED DISPLAY THIS MENU
		//CALL 'db_SelectCountryTOP' STRAIGHT AWAY
		if( strcmp(splits[0], "none", false) != 0 && strcmp(splits[1], "none", false) != 0 ){
			db_SelectCountryTOP(client, szCountryName, style);
			return;
		}

		//IF PLAYER INPUTS STYLE THERE IS NO NEED DISPLAY THIS MENU
		//CALL 'db_GetCountriesNames' STRAIGHT AWAY
		if( strcmp(splits[0], "none", false) == 0 && strcmp(splits[1], "none", false) != 0 ){
			db_GetCountriesNames(client, StringToInt(splits[1]));
			return;
		}

	}
	//IF PLAYER IS USING SM_CTOP WITHOUT ANY ARGUMENTS
	//THIS MEANS THE COUNTRY NAME IS NOT BEEN SELECTED YET
	//SIMPLY SET IT AS "none"
	else {
		szCountryName = "none";
	}


	Menu menu = CreateMenu(CountryTopMenuStyleSelectHandler);

	SetMenuTitle(menu, "国家排行菜单 - 选择风格\n \n");

	for (int i = 0; i < sizeof(g_EditStyles); i++)
	{
		Format(szBuffer, sizeof(szBuffer), "%s-%d", szCountryName, i);

		//EACH MENU ITEM HAS A STRING CONTAINING THE COUNTRY NAME AND THE STYLE SELECTED IN THE FOLLOWING FORMAT -> 'country-style'
		AddMenuItem(menu, szBuffer, g_EditStyles[i]);
	}

	SetMenuExitButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int CountryTopMenuStyleSelectHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char szBuffer[256];
		GetMenuItem(menu, param2, szBuffer, sizeof(szBuffer));

		char splits[2][256];
		ExplodeString(szBuffer, "-", splits, sizeof(splits), sizeof(splits[]));

		if( strcmp(splits[0], "none", false) == 0 )
			db_GetCountriesNames(param1, StringToInt(splits[1]));
		else
			db_SelectCountryTOP(param1, splits[0], StringToInt(splits[1]));
	}
	else if (action == MenuAction_End) {
		delete menu;
	}

	return 0;
}


public Action Client_ContinentRank(int client, int args)
{
	if(!IsValidClient(client))
		return Plugin_Handled;

	switch (args){
		case 0 : {
			char szClientName[MAX_NAME_LENGTH];
			GetClientName(client, szClientName, sizeof szClientName);

			db_SelectContinentRank(client, szClientName, g_szContinentCode[client], g_iCurrentStyle[client]);
		}
		case 1 : {

			char arg1[MAX_NAME_LENGTH];

			GetCmdArg(1, arg1, sizeof arg1);

			//sm_continentrank #<style_acronym>
			if (arg1[0] == '#') {
				ReplaceString(arg1, sizeof arg1, "#", "", false);

				ArrayList styles = new ArrayList(32);

				for (int j = 0; j < MAX_STYLES; j++) {
					styles.PushString(g_szStyleAcronyms[j]);
				}

				int style = styles.FindString(arg1);
				delete styles;

				if ( style == -1 ) {
					CPrintToChat(client, "%t", "style_not_found", g_szChatPrefix, MAX_STYLES - 1);
					return Plugin_Handled;
				}

				char szClientName[MAX_NAME_LENGTH];
				GetClientName(client, szClientName, sizeof szClientName);

				db_SelectContinentRank(client, szClientName, g_szContinentCode[client], style);

				return Plugin_Handled;

			}

			//sm_continentrank <playername>
			db_SelectCustomPlayerContinentRank(client, arg1, g_iCurrentStyle[client]);
		}
		case 2 : {
			char arg1[MAX_NAME_LENGTH];
			GetCmdArg(1, arg1, sizeof arg1);

			char arg2[MAX_NAME_LENGTH];
			GetCmdArg(2, arg2, sizeof arg2);

			//sm_continentrank #<style_acronym> <playername>
			if (arg1[0] == '#') {
				ReplaceString(arg1, sizeof arg1, "#", "", false);

				ArrayList styles = new ArrayList(32);

				for (int j = 0; j < MAX_STYLES; j++) {
					styles.PushString(g_szStyleAcronyms[j]);
				}

				int style = styles.FindString(arg1);
				delete styles;

				if ( style == -1 ) {
					CPrintToChat(client, "%t", "style_not_found", g_szChatPrefix, MAX_STYLES - 1);
					return Plugin_Handled;
				}

				db_SelectCustomPlayerContinentRank(client, arg2, style);

				return Plugin_Handled;
			}

			//sm_continentrank <playername> #<style_acronym>
			if (arg2[0] == '#') {
				ReplaceString(arg2, sizeof arg2, "#", "", false);

				ArrayList styles = new ArrayList(32);

				for (int j = 0; j < MAX_STYLES; j++) {
					styles.PushString(g_szStyleAcronyms[j]);
				}

				int style = styles.FindString(arg2);
				delete styles;

				if ( style == -1 ) {
					CPrintToChat(client, "%t", "style_not_found", g_szChatPrefix, MAX_STYLES - 1);
					return Plugin_Handled;
				}

				db_SelectCustomPlayerContinentRank(client, arg1, style);

				return Plugin_Handled;
			}

			CPrintToChat(client, "%t", "continentrank_help_chat", g_szChatPrefix);
			PrintToConsole(client, "%t", "continentrank_help");
			PrintToConsole(client, "%t", "continent_acronyms_help");	

		}
	}

	return Plugin_Handled;
}


public Action Client_ContinentTOP(int client, int args)
{
	char szBuffer[256] = "zz-none";

	switch (args) {
		//sm_continenttop
		case 0: ContinentTopMenuStyleSelect(client, szBuffer);
		//sm_continenttop <continentname>
		//sm_continenttop #<style_acronym>
		case 1: {
			char arg1[100];
			GetCmdArg(1, arg1, sizeof arg1);

			//sm_ctop #<style_acronym>
			if (arg1[0] == '#') {
				ReplaceString(arg1, sizeof arg1, "#", "", false);

				ArrayList styles = new ArrayList(32);

				for (int j = 0; j < MAX_STYLES; j++) {
					styles.PushString(g_szStyleAcronyms[j]);
				}

				int style = styles.FindString(arg1);
				delete styles;

				if ( style == -1 ) {
					CPrintToChat(client, "%t", "style_not_found", g_szChatPrefix, MAX_STYLES - 1);
					return Plugin_Handled;
				}

				db_GetContinentNames(client, style);
				return Plugin_Handled;
			}

			//sm_continenttop <continentname>

			char szContinentName[100];
			char szContinentCode[3];
			Format(szContinentCode, sizeof szContinentCode, "%s", arg1);
			if( !GetContinentName(szContinentCode, szContinentName, sizeof szContinentName) ) {
				CPrintToChat(client, "%t", "continenttop_help_chat", g_szChatPrefix);
				PrintToConsole(client, "%t", "continenttop_help" );
				PrintToConsole(client, "%t", "continent_acronyms_help");
				PrintToConsole(client, "%t", "style_acronyms_help");
				return Plugin_Handled;
			}

			Format(szBuffer, sizeof szBuffer, "%s-none", arg1);
			ContinentTopMenuStyleSelect(client, szBuffer);
		}
		//sm_continenttop <continentname> #<style_acronym>
		//sm_continenttop #<style_acronym> <continentname>
		case 2: {

			char arg1[100];
			char arg2[100];

			GetCmdArg(1, arg1, sizeof arg1);
			GetCmdArg(2, arg2, sizeof arg2);

			//sm_continenttop #<style_acronym> <continentname>
			if (arg1[0] == '#') {
				ReplaceString(arg1, sizeof arg1, "#", "", false);

				ArrayList styles = new ArrayList(32);

				for (int j = 0; j < MAX_STYLES; j++) {
					styles.PushString(g_szStyleAcronyms[j]);
				}

				int style = styles.FindString(arg1);
				delete styles;

				if ( style == -1 ) {
					CPrintToChat(client, "%t", "style_not_found", g_szChatPrefix, MAX_STYLES - 1);
					return Plugin_Handled;
				}

				char szContinentName[100];
				char szContinentCode[3];
				Format(szContinentCode, sizeof szContinentCode, "%s", arg2);
				if( !GetContinentName(szContinentCode, szContinentName, sizeof szContinentName) ) {
					CPrintToChat(client, "%t", "continenttop_help_chat", g_szChatPrefix);
					PrintToConsole(client, "%t", "continenttop_help");
					PrintToConsole(client, "%t", "continent_acronyms_help");
					PrintToConsole(client, "%t", "style_acronyms_help");
					return Plugin_Handled;
				}

				Format(szBuffer, sizeof szBuffer, "%s-%d", arg2, style);
				ContinentTopMenuStyleSelect(client, szBuffer);

				return Plugin_Handled;
			}

			//sm_continenttop <continentname> #<style_acronym>
			if (arg2[0] == '#') {
				ReplaceString(arg2, sizeof arg2, "#", "", false);

				ArrayList styles = new ArrayList(32);

				for (int j = 0; j < MAX_STYLES; j++) {
					styles.PushString(g_szStyleAcronyms[j]);
				}

				int style = styles.FindString(arg2);
				delete styles;

				if ( style == -1 ) {
					CPrintToChat(client, "%t", "style_not_found", g_szChatPrefix, MAX_STYLES - 1);
					return Plugin_Handled;
				}

				char szContinentName[100];
				char szContinentCode[3];
				Format(szContinentCode, sizeof szContinentCode, "%s", arg1);
				if( !GetContinentName(szContinentCode, szContinentName, sizeof szContinentName) ) {
					CPrintToChat(client, "%t", "continenttop_help_chat", g_szChatPrefix);
					PrintToConsole(client, "%t", "continenttop_help");
					PrintToConsole(client, "%t", "continent_acronyms_help");
					PrintToConsole(client, "%t", "style_acronyms_help");
					return Plugin_Handled;
				}

				Format(szBuffer, sizeof szBuffer, "%s-%d", arg1, style);
				ContinentTopMenuStyleSelect(client, szBuffer);

				return Plugin_Handled;
			}

			CPrintToChat(client, "%t", "continenttop_help_chat", g_szChatPrefix);
			PrintToConsole(client, "%t", "continenttop_help");
			PrintToConsole(client, "%t", "style_acronyms_help");
			PrintToConsole(client, "%t", "continent_acronyms_help");
		}
	}

	return Plugin_Handled;
}

public void ContinentTopMenuStyleSelect(int client, char szBuffer[256])
{
	char szContinentCode[3];
	int style;

	//IF THE PLAYER INSERTED A CONTINENT OR A STYLE SPLIT THE BUFFER STRING AND STORE THE VALUES INDIVIDUAL VARIABLES
	//split[0] -> Continent
	//split[1] -> style
	if ( strcmp(szBuffer, "zz-none", false) != 0 ) {
		char splits[2][256];
		ExplodeString(szBuffer, "-", splits, sizeof(splits), sizeof(splits[]));

		//INSERTED CONTINENT
		if( strcmp(splits[0], "zz", false) != 0 ) {
			Format(szContinentCode, sizeof szContinentCode, "%s", splits[0]);
		}
		
		//INSERTED STYLE
		if( strcmp(splits[1], "none", false) != 0 ) {
			style = StringToInt(splits[1]);
		}

		//IF PLAYER INPUTS CONTINENT NAME AND STYLE THERE IS NO NEED DISPLAY THIS MENU
		//CALL 'db_SelectContinentTOP' STRAIGHT AWAY
		if( strcmp(splits[0], "zz", false) != 0 && strcmp(splits[1], "none", false) != 0 ){
			db_SelectContinentTOP(client, szContinentCode, style);
			return;
		}

		//IF PLAYER INPUTS STYLE THERE IS NO NEED DISPLAY THIS MENU
		//CALL 'db_GetContinentNames' STRAIGHT AWAY
		if( strcmp(splits[0], "zz", false) == 0 && strcmp(splits[1], "none", false) != 0 ){
			db_GetContinentNames(client, StringToInt(splits[1]));
			return;
		}

	}
	//IF PLAYER IS USING SM_CONTINENTTOP WITHOUT ANY ARGUMENTS
	//THIS MEANS THE CONTINENT NAME IS NOT BEEN SELECTED YET
	//SIMPLY SET IT AS "zz"
	else {
		szContinentCode = "zz";
	}


	Menu menu = CreateMenu(ContinentTopMenuStyleSelectHandler);

	SetMenuTitle(menu, "洲大陆排行菜单 - 选择风格\n \n");

	for (int i = 0; i < sizeof(g_EditStyles); i++)
	{
		Format(szBuffer, sizeof(szBuffer), "%s-%d", szContinentCode, i);

		//EACH MENU ITEM HAS A STRING CONTAINING THE CONTINENT NAME AND THE STYLE SELECTED IN THE FOLLOWING FORMAT -> 'continent-style'
		AddMenuItem(menu, szBuffer, g_EditStyles[i]);
	}

	SetMenuExitButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int ContinentTopMenuStyleSelectHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char szBuffer[256];
		GetMenuItem(menu, param2, szBuffer, sizeof(szBuffer));

		char splits[2][256];
		ExplodeString(szBuffer, "-", splits, sizeof(splits), sizeof(splits[]));
	
		if( strcmp(splits[0], "zz", false) == 0 )
			db_GetContinentNames(param1, StringToInt(splits[1]));
		else {
			char szContinentCode[3];
			Format(szContinentCode, sizeof szContinentCode, "%s", splits[0]);

			db_SelectContinentTOP(param1, szContinentCode, StringToInt(splits[1]));
		}
	}
	else if (action == MenuAction_End) {
		delete menu;
	}

	return 0;
}





public Action Client_Top(int client, int args)
{
	TopMenuStyleSelect(client);
	//ckTopMenu(client);
	return Plugin_Handled;
}

public void TopMenuStyleSelect(int client)
{
	Menu menu = CreateMenu(TopMenuStyleSelectHandler);
	SetMenuTitle(menu, "排行榜菜单 - 选择风格\n \n");
	AddMenuItem(menu, "", "普通");
	AddMenuItem(menu, "", "侧滑");
	AddMenuItem(menu, "", "半侧滑");
	AddMenuItem(menu, "", "倒滑");
	AddMenuItem(menu, "", "低重力");
	AddMenuItem(menu, "", "慢速");
	AddMenuItem(menu, "", "快进");
	AddMenuItem(menu, "", "Freestyle");
	SetMenuExitButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int TopMenuStyleSelectHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		ckTopMenu(param1, param2);
	}
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public Action Client_MapTop(int client, int args)
{
	char szArg[128];

	if (args == 0)
	{
		Format(szArg, 128, "%s", g_szMapName);
	}
	else
	{
		GetCmdArg(1, szArg, 128);
	}
	MapTopMenuSelectStyle(client, szArg);
	return Plugin_Handled;
}

public void MapTopMenuSelectStyle(int client, char szMapName[128])
{
	Menu menu = CreateMenu(MapTopMenuSelectStyleHandler);
	SetMenuTitle(menu, "地图排行榜菜单 - 选择风格\n \n");
	AddMenuItem(menu, szMapName, "普通");
	AddMenuItem(menu, szMapName, "侧滑");
	AddMenuItem(menu, szMapName, "半侧滑");
	AddMenuItem(menu, szMapName, "倒滑");
	AddMenuItem(menu, szMapName, "低重力");
	AddMenuItem(menu, szMapName, "慢速");
	AddMenuItem(menu, szMapName, "快进");
	AddMenuItem(menu, szMapName, "Freestyle");
	SetMenuExitButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int MapTopMenuSelectStyleHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char szMapName[128];
		GetMenuItem(menu, param2, szMapName, sizeof(szMapName));
		db_selectMapNameEquals(param1, szMapName, param2);
	}
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public Action Client_BonusTop(int client, int args)
{
	char szArg[128], zGrp;

	if (!IsValidClient(client))
		return Plugin_Handled;

	switch (args) {
		case 0: { // !btop
			if (g_mapZoneGroupCount == 1)
			{
				CPrintToChat(client, "%t", "NoBonusOnMap", g_szChatPrefix);
				CPrintToChat(client, "%t", "BTopUsage", g_szChatPrefix);
				return Plugin_Handled;
			}
			if (g_mapZoneGroupCount == 2)
			{
				zGrp = 1;
				Format(szArg, 128, "%s", g_szMapName);
			}
			if (g_mapZoneGroupCount > 2)
			{
				ListBonuses(client, 2);
				return Plugin_Handled;
			}
		}
		case 1: { // !btop <mapname> / <bonus id>
			// 1st check if bonus id or mapname
			GetCmdArg(1, szArg, 128);
			if (StringToInt(szArg) == 0 && szArg[0] != '0') // passes, if not a number (argument is mapname)
			{
				db_selectBonusesInMap(client, szArg);
				return Plugin_Handled;
			}
			else // argument is a bonus id (Use current map)
			{
				zGrp = StringToInt(szArg);
				if (0 < zGrp < MAXZONEGROUPS)
				{
					Format(szArg, 128, "%s", g_szMapName);
				}
				else
				{
					CPrintToChat(client, "%t", "InvalidBonusID", g_szChatPrefix, zGrp);
					return Plugin_Handled;
				}
			}
		}
		case 2: {
			GetCmdArg(1, szArg, 128);
			if (StringToInt(szArg) != 0 && szArg[0] != '0') // passes, if not a number (argument is mapname)
			{
				char szZGrp[128];
				GetCmdArg(2, szZGrp, 128);
				zGrp = StringToInt(szZGrp);
			}
			else // argument is a bonus id
			{
				zGrp = StringToInt(szArg);
				GetCmdArg(2, szArg, 128);
			}

			if (0 > zGrp || zGrp > MAXZONEGROUPS)
			{
				CPrintToChat(client, "%t", "InvalidBonusID", g_szChatPrefix, zGrp);
				return Plugin_Handled;
			}
		}
		default: {
			CPrintToChat(client, "%t", "BTopUsage", g_szChatPrefix);
			return Plugin_Handled;
		}
	}
	db_selectBonusTopSurfers(client, szArg, zGrp, 0);
	return Plugin_Handled;
}

public Action Client_SWBonusTop(int client, int args)
{
	char szArg[128], zGrp;

	if (!IsValidClient(client))
		return Plugin_Handled;

	switch (args) {
		case 0: { // !btop
			if (g_mapZoneGroupCount == 1)
			{
				CPrintToChat(client, "%t", "NoBonusOnMap", g_szChatPrefix);
				CPrintToChat(client, "%t", "BTopUsage", g_szChatPrefix);
				return Plugin_Handled;
			}
			if (g_mapZoneGroupCount == 2)
			{
				zGrp = 1;
				Format(szArg, 128, "%s", g_szMapName);
			}
			if (g_mapZoneGroupCount > 2)
			{
				ListBonuses(client, 2);
				return Plugin_Handled;
			}
		}
		case 1: { // !btop <mapname> / <bonus id>
			// 1st check if bonus id or mapname
			GetCmdArg(1, szArg, 128);
			if (StringToInt(szArg) == 0 && szArg[0] != '0') // passes, if not a number (argument is mapname)
			{
				db_selectBonusesInMap(client, szArg);
				return Plugin_Handled;
			}
			else // argument is a bonus id (Use current map)
			{
				zGrp = StringToInt(szArg);
				if (0 < zGrp < MAXZONEGROUPS)
				{
					Format(szArg, 128, "%s", g_szMapName);
				}
				else
				{
					CPrintToChat(client, "%t", "InvalidBonusID", g_szChatPrefix, zGrp);
					return Plugin_Handled;
				}
			}
		}
		case 2: {
			GetCmdArg(1, szArg, 128);
			if (StringToInt(szArg) != 0 && szArg[0] != '0') // passes, if not a number (argument is mapname)
			{
				char szZGrp[128];
				GetCmdArg(2, szZGrp, 128);
				zGrp = StringToInt(szZGrp);
			}
			else // argument is a bonus id
			{
				zGrp = StringToInt(szArg);
				GetCmdArg(2, szArg, 128);
			}

			if (0 > zGrp || zGrp > MAXZONEGROUPS)
			{
				CPrintToChat(client, "%t", "InvalidBonusID", g_szChatPrefix, zGrp);
				return Plugin_Handled;
			}
		}
		default: {
			CPrintToChat(client, "%t", "BTopUsage", g_szChatPrefix);
			return Plugin_Handled;
		}
	}
	db_selectBonusTopSurfers(client, szArg, zGrp, 0);
	return Plugin_Handled;
}

public Action Client_Spec(int client, int args)
{
	SpecPlayer(client, args);
	return Plugin_Handled;
}

public void SpecPlayer(int client, int args)
{
	char szPlayerName[MAX_NAME_LENGTH];
	char szPlayerName2[256];
	char szOrgTargetName[MAX_NAME_LENGTH];
	char szTargetName[MAX_NAME_LENGTH];
	char szArg[MAX_NAME_LENGTH];
	Format(szTargetName, MAX_NAME_LENGTH, "");
	Format(szOrgTargetName, MAX_NAME_LENGTH, "");

	if (args == 0)
	{
		Menu menu = CreateMenu(SpecMenuHandler);

		if (g_bSpectate[client])
			SetMenuTitle(menu, "观察菜单 (按下 'm' 重新加入队伍)\n------------------------------------------------------------\n");
		else
			SetMenuTitle(menu, "观察菜单 \n------------------------------\n");
		int playerCount = 0;

		// add replay bots
		if (g_RecordBot != -1)
		{
			if (g_RecordBot != -1 && IsValidClient(g_RecordBot) && IsPlayerAlive(g_RecordBot))
			{
				Format(szPlayerName2, 256, "地图回放 (%s)", g_szReplayTime);
				AddMenuItem(menu, "地图记录回放", szPlayerName2);
				playerCount++;
			}
		}
		if (g_BonusBot != -1)
		{
			if (g_BonusBot != -1 && IsValidClient(g_BonusBot) && IsPlayerAlive(g_BonusBot))
			{
				Format(szPlayerName2, 256, "奖励回放 (%s)", g_szBonusTime);
				AddMenuItem(menu, "奖励记录回放", szPlayerName2);
				playerCount++;
			}
		}
		if (g_WrcpBot != -1 && g_bhasStages)
		{
			if (g_WrcpBot != -1 && IsValidClient(g_WrcpBot) && IsPlayerAlive(g_WrcpBot))
			{
				Format(szPlayerName2, 256, "关卡 %i 回放 (%s)", g_StageReplayCurrentStage, g_szWrcpReplayTime[g_StageReplayCurrentStage]);
				AddMenuItem(menu, "关卡记录回放", szPlayerName2);
				playerCount++;
			}
		}

		int count = 0;
		// add players
		for (int i = 1; i <= MaxClients; i++)
		{
			if (IsValidClient(i) && IsPlayerAlive(i) && i != client && !IsFakeClient(i))
			{
				if (count == 0)
				{
					int bestrank = 99999999;
					for (int x = 1; x <= MaxClients; x++)
					{
						if (IsValidClient(x) && IsPlayerAlive(x) && x != client && !IsFakeClient(x) && g_PlayerRank[x][0] > 0)
							if (g_PlayerRank[x][0] <= bestrank)
							bestrank = g_PlayerRank[x][0];
					}
					char szMenu[128];
					Format(szMenu, 128, "最高排名玩家（#%i）", bestrank);
					AddMenuItem(menu, "brp123123xcxc", szMenu);
					AddMenuItem(menu, "", "", ITEMDRAW_SPACER);
				}
				GetClientName(i, szPlayerName, MAX_NAME_LENGTH);
				Format(szPlayerName2, 256, "%s (%s)", szPlayerName, g_pr_rankname[i]);
				AddMenuItem(menu, szPlayerName, szPlayerName2);
				playerCount++;
				count++;
			}
		}

		if (playerCount > 0 || g_RecordBot != -1 || g_BonusBot != -1)
		{
			SetMenuOptionFlags(menu, MENUFLAG_BUTTON_EXIT);
			DisplayMenu(menu, client, MENU_TIME_FOREVER);
		}

	}
	else
	{
		for (int i = 1; i < 20; i++)
		{
			GetCmdArg(i, szArg, MAX_NAME_LENGTH);
			if (!StrEqual(szArg, "", false))
			{
				if (i == 1)
					Format(szTargetName, MAX_NAME_LENGTH, "%s", szArg);
				else
					Format(szTargetName, MAX_NAME_LENGTH, "%s %s", szTargetName, szArg);
			}
		}
		Format(szOrgTargetName, MAX_NAME_LENGTH, "%s", szTargetName);
		StringToUpper(szTargetName);
		for (int i = 1; i <= MaxClients; i++)
		{
			if (IsValidClient(i) && IsPlayerAlive(i) && i != client)
			{
				GetClientName(i, szPlayerName, MAX_NAME_LENGTH);
				StringToUpper(szPlayerName);
				if ((StrContains(szPlayerName, szTargetName) != -1))
				{
					ChangeClientTeam(client, 1);
					SetEntPropEnt(client, Prop_Send, "m_hObserverTarget", i);
					SetEntProp(client, Prop_Send, "m_iObserverMode", 4);
					g_bWrcpTimeractivated[client] = false;
					return;
				}
			}
		}
		CPrintToChat(client, "%t", "PlayerNotFound", g_szChatPrefix, szOrgTargetName);
	}
}

public int SpecMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char info[32];
		char szPlayerName[MAX_NAME_LENGTH];
		GetMenuItem(menu, param2, info, sizeof(info));

		if (StrEqual(info, "brp123123xcxc"))
		{
			int playerid;
			int count = 0;
			int bestrank = 99999999;
			for (int i = 1; i <= MaxClients; i++)
			{
				if (IsValidClient(i) && IsPlayerAlive(i) && i != param1 && !IsFakeClient(i))
				{
					if (g_PlayerRank[i][0] <= bestrank && g_PlayerRank[i][0] > 0)
					{
						bestrank = g_PlayerRank[i][0];
						playerid = i;
						count++;
					}
				}
			}
			if (count == 0)
				CPrintToChat(param1, "%t", "NoPlayerTop", g_szChatPrefix);
			else
			{
				ChangeClientTeam(param1, 1);
				SetEntPropEnt(param1, Prop_Send, "m_hObserverTarget", playerid);
				SetEntProp(param1, Prop_Send, "m_iObserverMode", 4);
				g_bWrcpTimeractivated[param1] = false;
			}
		}
		else
		{
			for (int i = 1; i <= MaxClients; i++)
			{
				if (IsValidClient(i) && IsPlayerAlive(i) && i != param1)
				{
					GetClientName(i, szPlayerName, MAX_NAME_LENGTH);
					if (i == g_RecordBot)
						Format(szPlayerName, MAX_NAME_LENGTH, "MAP RECORD REPLAY");
					if (i == g_BonusBot)
						Format(szPlayerName, MAX_NAME_LENGTH, "BONUS RECORD REPLAY");
					if (i == g_WrcpBot)
						Format(szPlayerName, MAX_NAME_LENGTH, "STAGE RECORD REPLAY");
					if (StrEqual(info, szPlayerName))
					{
						ChangeClientTeam(param1, 1);
						SetEntPropEnt(param1, Prop_Send, "m_hObserverTarget", i);
						SetEntProp(param1, Prop_Send, "m_iObserverMode", 4);
						g_bWrcpTimeractivated[param1] = false;
					}
				}
			}
		}
	}
	else if (action == MenuAction_End)
	{
		delete menu;
	}

	return 0;
}

public Action Client_AutoBhop(int client, int args)
{
	AutoBhop(client);
	if (g_bAutoBhop)
	{
		if (!g_bAutoBhopClient[client])
			CPrintToChat(client, "%t", "AutoBhop2", g_szChatPrefix);
		else
			CPrintToChat(client, "%t", "AutoBhop1", g_szChatPrefix);
	}
	return Plugin_Handled;
}

public void AutoBhop(int client)
{
	if (!g_bAutoBhop)
		CPrintToChat(client, "%t", "AutoBhop3", g_szChatPrefix);

	g_bAutoBhopClient[client] = !g_bAutoBhopClient[client];

	if (g_bAutoBhopClient[client])
		SendConVarValue(client, g_hAutoBhop, "1");
	else
		SendConVarValue(client, g_hAutoBhop, "0");
}

// fluffys Kismet
public Action Client_ToggleTimer(int client, int args)
{
	ToggleTimer(client);
	if (!g_bTimerEnabled[client])
		CPrintToChat(client, "%t", "Commands31", g_szChatPrefix);
	else
		CPrintToChat(client, "%t", "Commands32", g_szChatPrefix);
	return Plugin_Handled;
}

public void ToggleTimer(int client)
{
	g_bTimerEnabled[client] = !g_bTimerEnabled[client];
	Client_Stop(client, 1);

	if (g_bTimerEnabled[client] || g_bTimerEnabled[client] && g_bNoClip[client])
	{
		Action_UnNoClip(client);
		Command_Restart(client, 1);
	}
}

void SpeedGradient(int client, bool menu = false)
{
	if (g_SpeedGradient[client] != 6)
		g_SpeedGradient[client]++;
	else
		g_SpeedGradient[client] = 0;

	if (menu)
		CSDOptions(client);
}

void SpeedMode(int client, bool menu = false)
{
	if (g_SpeedMode[client] != 2)
		g_SpeedMode[client]++;
	else
		g_SpeedMode[client] = 0;
	
	if (menu)
		CSDOptions(client);
}

void CSD_PosX(int client, bool menu = false)
{
	if (g_fCSD_POS_X[client] < 1.0){
		g_fCSD_POS_X[client] += 0.1;
	}
	else
		g_fCSD_POS_X[client] = 0.0;

	if (menu)
		CSDOptions(client);
}

void CSD_PosY(int client, bool menu = false)
{
	
	if (g_fCSD_POS_Y[client] < 1.0)
		g_fCSD_POS_Y[client] += 0.1;
	else
		g_fCSD_POS_Y[client] = 0.0;

	if (menu)
		CSDOptions(client);
}

public void ChangeColor(int client, int color_index, bool menu)
{
	g_iColorChangeIndex[client] = color_index;
	CPrintToChat(client, "%t", "ColorChangeValue", g_szChatPrefix);
	g_iWaitingForResponse[client] = ColorValue;

	if (menu)
		CSDOptions(client);
}

void CSDUpdateRate(int client, bool menu = false)
{
	if (g_iCSDUpdateRate[client] != 2)
		g_iCSDUpdateRate[client]++;
	else
		g_iCSDUpdateRate[client] = 0;

	if (menu)
		CSDOptions(client);
}

void PreSpeedMode(int client, bool menu = false)
{
	if (g_PreSpeedMode[client] != 2)
		g_PreSpeedMode[client]++;
	else
		g_PreSpeedMode[client] = 0;
	
	if (menu)
		MiscellaneousOptions(client);
}

void CenterSpeedDisplay(int client, bool menu = false)
{	
	//only swap values if the call comes from the "options" menu OR using the "sm_centerspeed" command
	if(menu)
		g_bCenterSpeedDisplay[client] = !g_bCenterSpeedDisplay[client];

	//THE LOWER THE NUMBER THE FASTER THE UPDATING IS
	int update_rate;
	if(g_bCenterSpeedDisplay[client]){
		switch(g_iCSDUpdateRate[client]){
			case 0: update_rate = 15;
			case 1:	update_rate = 10;
			case 2: update_rate = 5;
			default: update_rate = 15;
		}
	}
	
	if(g_iClientTick[client] - g_iCurrentTick[client] >= update_rate)
	{
		g_iCurrentTick[client] += update_rate;
		if (IsValidClient(client) && !IsFakeClient(client) && g_bCenterSpeedDisplay[client])
		{

			float fCSD_PosX;
			float fCSD_PosY;
			switch(g_fCSD_POS_X[client]){
				case 0.5: fCSD_PosX = -1.0;
				default: fCSD_PosX = g_fCSD_POS_X[client];
			}
			switch(g_fCSD_POS_Y[client]){
				case 0.5: fCSD_PosY = -1.0;
				default: fCSD_PosY = g_fCSD_POS_Y[client];
			}

			char szSpeed[128];
			int displayColor[3];

			// player alive
			if (IsPlayerAlive(client))
			{	
				if(g_SpeedGradient[client] != 6)
					displayColor = GetSpeedColourCSD(client, RoundToNearest(g_fLastSpeed[client]), g_SpeedGradient[client]);
				else{
					displayColor[0] = g_iCSD_R[client];
					displayColor[1] = g_iCSD_G[client];
					displayColor[2] = g_iCSD_B[client];
				}

				SetHudTextParams(fCSD_PosX, fCSD_PosY, update_rate / g_fTickrate + 0.1, displayColor[0], displayColor[1], displayColor[2], 255, 0, 0.0, 0.0, 0.0);

				Format(szSpeed, sizeof(szSpeed), "%i%s", RoundToNearest(g_fLastSpeed[client]), g_szPrespeedValue[client]);
			}
			// player not alive (check wether spec'ing a bot or another player)
			else {
				int SpecMode;
				int ObservedUser;

				SpecMode = GetEntProp(client, Prop_Send, "m_iObserverMode");

				ObservedUser = GetEntPropEnt(client, Prop_Send, "m_hObserverTarget");

				// spec'ing
				if (SpecMode == 4 || SpecMode == 5)
				{
					g_SpecTarget[client] = ObservedUser;
					if (IsValidClient(ObservedUser))
					{	
						//spec'ing a bot
						if (IsFakeClient(ObservedUser))
						{
							float fSpeed[3];
							GetEntPropVector(ObservedUser, Prop_Data, "m_vecVelocity", fSpeed);

							float fSpeedHUD;
							if(g_SpeedMode[client] == 0) //XY
								fSpeedHUD = SquareRoot(Pow(fSpeed[0], 2.0) + Pow(fSpeed[1], 2.0));
							else if(g_SpeedMode[client] == 1) //XYZ
								fSpeedHUD = SquareRoot(Pow(fSpeed[0], 2.0) + Pow(fSpeed[1], 2.0) + Pow(fSpeed[2], 2.0));
							else if(g_SpeedMode[client] == 2) //Z
								fSpeedHUD = SquareRoot(Pow(fSpeed[2], 2.0));

							if (ObservedUser == g_RecordBot)
							{
								if (g_iSelectedReplayStyle == 5)
								{
									fSpeedHUD /= 0.5;
								}
								else if (g_iSelectedReplayStyle == 6)
								{
									fSpeedHUD /= 1.5;
								}
							}
							else if (ObservedUser == g_BonusBot)
							{
								if (g_iSelectedBonusReplayStyle == 5)
								{
									fSpeedHUD /= 0.5;
								}
								else if (g_iSelectedBonusReplayStyle == 6)
								{
									fSpeedHUD /= 1.5;
								}
							}

							if(g_SpeedGradient[client] != 6)
								displayColor = GetSpeedColourCSD(client, RoundToNearest(fSpeedHUD), g_SpeedGradient[client]);
							else{
								displayColor[0] = g_iCSD_R[client];
								displayColor[1] = g_iCSD_G[client];
								displayColor[2] = g_iCSD_B[client];
							}

							SetHudTextParams(fCSD_PosX, fCSD_PosY, update_rate / g_fTickrate + 0.1, displayColor[0], displayColor[1], displayColor[2], 255, 0, 0.0, 0.0, 0.0);

							Format(szSpeed, sizeof(szSpeed), "%i%s", RoundToNearest(fSpeedHUD), g_szPrespeedValue[ObservedUser]);
						}
						// spec'ing player
						else {
							if(g_SpeedGradient[client] != 6)
								displayColor = GetSpeedColourCSD(client, RoundToNearest(g_fLastSpeed[ObservedUser]), g_SpeedGradient[client]);
							else{
								displayColor[0] = g_iCSD_R[client];
								displayColor[1] = g_iCSD_G[client];
								displayColor[2] = g_iCSD_B[client];
							}

							SetHudTextParams(fCSD_PosX, fCSD_PosY, update_rate / g_fTickrate + 0.1, displayColor[0], displayColor[1], displayColor[2], 255, 0, 0.0, 0.0, 0.0);

							Format(szSpeed, sizeof(szSpeed), "%i%s", RoundToNearest(g_fLastSpeed[ObservedUser]), g_szPrespeedValue[ObservedUser]);
						}
					}
				}
			}
			ShowSyncHudText(client, HUD_Handle, szSpeed);
		}
	}

	if (menu)
		CSDOptions(client);
}

void TeleSide(int client, bool menu = false)
{
	if (g_iTeleSide[client] == 0)
		g_iTeleSide[client]++;
	else
		g_iTeleSide[client] = 0;
	
	if (menu)
		MiscellaneousOptions(client);
}

void PrespeedText(int client, bool menu = false)
{
	g_iPrespeedText[client] = !g_iPrespeedText[client];
	
	if (menu)
		MiscellaneousOptions(client);
}

void HintsText(int client, bool menu = false)
{
	g_bAllowHints[client] = !g_bAllowHints[client];
	
	if (menu)
		MiscellaneousOptions(client);
}

public Action Client_Hide(int client, int args)
{
	HideMethod(client);
	if (!g_bHide[client])
		CPrintToChat(client, "%t", "HidePlayers1", g_szChatPrefix);
	else
		CPrintToChat(client, "%t", "HidePlayers2", g_szChatPrefix);
	return Plugin_Handled;
}

void HideMethod(int client, bool menu = false)
{
	g_bHide[client] = !g_bHide[client];
	if (menu)
		MiscellaneousOptions(client);
}

public Action Client_Latest(int client, int args)
{
	db_ViewLatestRecords(client);
	return Plugin_Handled;
}

public Action Client_Help(int client, int args)
{
	// taken from adminhelp.sp
	Menu menu = CreateMenu(HelpMenuHandler);
	SetMenuTitle(menu, "帮助\n \n");
	Handle cmdIter = GetCommandIterator();
	char name[64];
	char desc[255];
	int flags;
	char szCommand[320];
	while (ReadCommandIterator(cmdIter, name, sizeof(name), flags, desc, sizeof(desc)))
	{
		if ((StrContains(desc, "[surftimer]", false) != -1) && CheckCommandAccess(client, name, flags))
		{
			if ((StrContains(desc, "[zoner]", false) != -1))
			{
				if (!g_bZoner[client])
					continue;
			}
			else if ((StrContains(desc, "[vip]", false) != -1))
			{
				if(!IsPlayerVip(client))
					continue;
			}

			char szBuffer[512][2];
			ExplodeString(desc, "[surftimer]", szBuffer, 2, 512, false);
			Format(szCommand, 320, "%s - %s", name, szBuffer[1]);
			AddMenuItem(menu, "", szCommand, ITEMDRAW_DISABLED);
		}
	}
	SetMenuOptionFlags(menu, MENUFLAG_BUTTON_EXIT);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
	return Plugin_Handled;
}

public int HelpMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_End)
		delete menu;

	return 0;
}

public Action Client_Ranks(int client, int args)
{
	if (IsValidClient(client))
		displayRanksMenu(client);
	return Plugin_Handled;
}

public void displayRanksMenu(int client)
{
	Menu menu = CreateMenu(ShowRanksMenuHandler);
	SetMenuTitle(menu, "排名");
	char ChatLine[512];
	SkillGroup RankValue;
	for (int i = 0; i < GetArraySize(g_hSkillGroups); i++)
	{
		GetArrayArray(g_hSkillGroups, i, RankValue, sizeof(SkillGroup));
		ReplaceString(RankValue.RankName, sizeof(SkillGroup::RankName), "{style}", "");
		if (RankValue.PointsBot > -1 && RankValue.PointsTop > -1)
			Format(ChatLine, 512, "%i-%i 点数: %s", RankValue.PointsBot, RankValue.PointsTop, RankValue.RankName);
		else if (RankValue.PointReq > -1)
			Format(ChatLine, 512, "%i 点数: %s", RankValue.PointReq, RankValue.RankName);
		else if (RankValue.RankBot > 0 && RankValue.RankTop > 0)
			Format(ChatLine, 512, "排名 %i-%i: %s", RankValue.RankBot, RankValue.RankTop, RankValue.RankName);
		else
			Format(ChatLine, 512, "排名 %i: %s", RankValue.RankReq, RankValue.RankName);
		
		AddMenuItem(menu, "", ChatLine, ITEMDRAW_DISABLED);
	}
	SetMenuOptionFlags(menu, MENUFLAG_BUTTON_EXIT);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int ShowRanksMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_End)
	{
		delete menu;
	}

	return 0;
}

public Action Client_Profile(int client, int args)
{
	// spam protection
	float diff = GetGameTime() - g_fProfileMenuLastQuery[client];
	if (diff < 0.5)
	{
		g_bSelectProfile[client] = false;
		return Plugin_Handled;
	}

	// Search for a players profile in the database
	char szName[MAX_NAME_LENGTH], szBuffer[MAX_NAME_LENGTH];
	int style = -1;
	Format(szName, sizeof(szName), "");

	// Add all arguments to the same string for names with spaces
	if (args > 0)
	{
		for (int i = 1; i < 20; i++)
		{
			GetCmdArg(i, szBuffer, MAX_NAME_LENGTH);
			if (!StrEqual(szBuffer, "", false))
			{
				if (i == 1)
				{
					style = GetStyleIndex(szBuffer);
					if (style == -1)
						Format(szName, sizeof(szName), "%s", szBuffer);
				}
				else if (i == 2 && style > -1)
					Format(szName, sizeof(szName), "%s", szBuffer);
				else
					Format(szName, MAX_NAME_LENGTH, "%s %s", szName, szBuffer);
			}
		}
	}

	// Select which style 
	ProfileMenuStyleSelect(client, style, szName);
	return Plugin_Handled;
}

public void ProfileMenuStyleSelect(int client, int style, char szName[MAX_NAME_LENGTH])
{
	if (style == -1)
	{
		Menu menu = CreateMenu(ProfileMenuStyleSelectHandler);
		SetMenuTitle(menu, "个人资料彩带 - 选择风格");
		AddMenuItem(menu, szName, "正常");
		AddMenuItem(menu, szName, "侧滑");
		AddMenuItem(menu, szName, "半侧滑");
		AddMenuItem(menu, szName, "倒滑");
		AddMenuItem(menu, szName, "低重力");
		AddMenuItem(menu, szName, "慢速");
		AddMenuItem(menu, szName, "快进");
		AddMenuItem(menu, szName, "Freestyle");
		SetMenuExitButton(menu, true);
		DisplayMenu(menu, client, MENU_TIME_FOREVER);
	}
	else
		ProfileMenu2(client, style, szName, "");
}

public int ProfileMenuStyleSelectHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char szName[MAX_NAME_LENGTH];
		GetMenuItem(menu, param2, szName, sizeof(szName));
		ProfileMenu2(param1, param2, szName, "");
	}
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public void ProfileMenu2(int client, int style, char szName[MAX_NAME_LENGTH], char szSteamId3[32])
{
	g_ProfileStyleSelect[client] = style;

	// No Name found, get list of clients in server
	if (StrEqual(szName, "", false) && StrEqual(szSteamId3, ""))
	{
		char szPlayerName[MAX_NAME_LENGTH];
		Menu menu = CreateMenu(ProfilePlayerSelectMenuHandler);
		SetMenuTitle(menu, "个人资料菜单 - 选择一个玩家\n------------------------------\n");
		GetClientName(client, szPlayerName, sizeof(szPlayerName));
		AddMenuItem(menu, szPlayerName, szPlayerName);
		for (int i = 1; i <= MaxClients; i++)
		{
			if (IsValidClient(i) && !IsFakeClient(i) && i != client)
			{
				GetClientName(i, szPlayerName, sizeof(szPlayerName));
				AddMenuItem(menu, szPlayerName, szPlayerName);
			}
		}
		g_bSelectProfile[client] = true;
		SetMenuExitButton(menu, true);
		DisplayMenu(menu, client, MENU_TIME_FOREVER);
		return;
	}
	else
	{
		// If provided with a steamid
		if (!StrEqual(szSteamId3, ""))
		{
			db_viewPlayerProfile(client, style, szSteamId3, true, "");
			return;
		}

		// Name provided, search for player on server
		bool bPlayerFound = false;
		g_bProfileInServer[client] = false;
		char szSteamId[32];
		char szBuffer[MAX_NAME_LENGTH];
		for (int i = 1; i <= MaxClients; i++)
		{
			if (IsValidClient(i) && !IsFakeClient(i))
			{
				GetClientName(i, szBuffer, sizeof(szBuffer));
				if (StrContains(szBuffer, szName, false) != -1)
				{
					bPlayerFound = true;
					GetClientAuthId(i, AuthId_Steam2, szSteamId, 32, true);
					g_ClientProfile[client] = i;
					g_bProfileInServer[client] = true;
					break;
				}
			}
		}

		db_viewPlayerProfile(client, style, szSteamId, bPlayerFound, szName);
	}
}

public int ProfilePlayerSelectMenuHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char szPlayerName[MAX_NAME_LENGTH];
		char szBuffer[MAX_NAME_LENGTH];
		char szSteamId[32];
		GetMenuItem(menu, param2, szPlayerName, sizeof(szPlayerName));
		for (int i = 0; i < MaxClients; i++)
		{
			if (IsValidClient(i) && !IsFakeClient(i))
			{
				GetClientName(i, szBuffer, sizeof(szBuffer));
				if (StrEqual(szPlayerName, szBuffer))
				{
					GetClientAuthId(i, AuthId_Steam2, szSteamId, 32, true);
					db_viewPlayerProfile(param1, g_ProfileStyleSelect[param1], szSteamId, true, szPlayerName);
					break;	
				}
			}
		}
	}
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public Action Client_Pause(int client, int args)
{
	if (GetClientTeam(client) == 1)return Plugin_Handled;
	if (g_bInStartZone[client])
	{
		CPrintToChat(client, "%t", "Commands33", g_szChatPrefix);
		return Plugin_Handled;
	}
	PauseMethod(client);
	if (g_bPause[client] == false)
		CPrintToChat(client, "%t", "Pause2", g_szChatPrefix);
	else
		CPrintToChat(client, "%t", "Pause3", g_szChatPrefix);
	return Plugin_Handled;
}

public void PauseMethod(int client)
{
	if (GetClientTeam(client) == 1)return;
	if (g_bPause[client] == false && IsValidEntity(client)) // When using !pause to pause
	{
		if (GetConVarBool(g_hPauseServerside) == false && client != g_RecordBot && client != g_BonusBot)
		{
			CPrintToChat(client, "%t", "Pause1", g_szChatPrefix);
			return;
		}
		g_bPause[client] = true;
		SetEntityMoveType(client, MOVETYPE_NONE); // not sure why he sets vel to 0
		// Timer enabled?
		if (g_bTimerRunning[client] == true)
		{
			g_fStartPauseTime[client] = GetClientTickTime(client);
			if (g_fPauseTime[client] > 0.0)
			{
				g_fStartPauseTime[client] = g_fStartPauseTime[client] - g_fPauseTime[client];
			}
		}
		SetEntityRenderMode(client, RENDER_NONE);
		SetEntData(client, FindSendPropInfo("CBaseEntity", "m_CollisionGroup"), 2, 4, true);
	}
	else // When using !pause to unpause
	{
		if (g_fStartTime[client] != -1.0 && g_bTimerRunning[client] == true)
		{
			g_fPauseTime[client] = GetClientTickTime(client) - g_fStartPauseTime[client];
			g_fSrcpPauseTime[client] = g_fPauseTime[client];
		}

		g_bNoClip[client] = false;
		g_bPause[client] = false;

		if (!g_bRoundEnd)
			SetEntityMoveType(client, MOVETYPE_WALK);

		SetEntityRenderMode(client, RENDER_NORMAL);

		if (GetConVarBool(g_hCvarNoBlock))
			SetEntData(client, FindSendPropInfo("CBaseEntity", "m_CollisionGroup"), 2, 4, true);
		else
			SetEntData(client, FindSendPropInfo("CBaseEntity", "m_CollisionGroup"), 2, 5, true);
	}
}

public int GoToMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char info[32];
		char szPlayerName[MAX_NAME_LENGTH];
		GetMenuItem(menu, param2, info, sizeof(info));
		for (int i = 1; i <= MaxClients; i++)
		{
			if (IsValidClient(i) && IsPlayerAlive(i) && i != param1)
			{
				GetClientName(i, szPlayerName, MAX_NAME_LENGTH);
				if (StrEqual(info, szPlayerName))
				{
					GotoMethod(param1, i);
				}
				else
				{
					if (i == MaxClients)
					{
						CPrintToChat(param1, "%t", "PlayerNotFound", g_szChatPrefix, szPlayerName);
						Client_GoTo(param1, 0);
					}
				}
			}
		}
	}
	else if (action == MenuAction_End)
	{
		delete menu;
	}

	return 0;
}

public void GotoMethod(int client, int target)
{
	if (!IsValidClient(client) || IsFakeClient(client))
		return;
	char szTargetName[MAX_NAME_LENGTH];
	GetClientName(target, szTargetName, MAX_NAME_LENGTH);
	if (GetEntityFlags(target) & FL_ONGROUND)
	{
		Client_Stop(client, 0);

		int ducked = GetEntProp(target, Prop_Send, "m_bDucked");
		int ducking = GetEntProp(target, Prop_Send, "m_bDucking");
		if (!(GetClientButtons(client) & IN_DUCK) && ducked == 0 && ducking == 0)
		{
			if (GetClientTeam(client) == 1 || GetClientTeam(client) == 0)
			{
				float position[3];
				float angles[3];
				GetClientAbsOrigin(target, position);
				GetClientEyeAngles(target, angles);

				AddVectors(position, angles, g_fTeleLocation[client]);
				g_fTeleLocation[client][0] = g_fTeleLocation[client][0] / 2.0;
				g_fTeleLocation[client][1] = g_fTeleLocation[client][1] / 2.0;
				g_fTeleLocation[client][2] = g_fTeleLocation[client][2] / 2.0;

				g_bRespawnPosition[client] = false;
				g_specToStage[client] = true;
				TeamChangeActual(client, 0);
			}
			else
			{
				float position[3];
				float angles[3];
				GetClientAbsOrigin(target, position);
				GetClientEyeAngles(target, angles);
				teleportEntitySafe(client, position, angles, view_as<float>( { 0.0, 0.0, -100.0 } ), true);
				char szClientName[MAX_NAME_LENGTH];
				GetClientName(client, szClientName, MAX_NAME_LENGTH);
				CPrintToChat(target, "%t", "Goto5", g_szChatPrefix, szClientName);
			}
		}
		else
		{
			CPrintToChat(client, "%t", "Goto6", g_szChatPrefix, szTargetName);
			Client_GoTo(client, 0);
		}
	}
	else
	{
		CPrintToChat(client, "%t", "Goto7", g_szChatPrefix, szTargetName);
		Client_GoTo(client, 0);
	}
}

public Action Client_GoTo(int client, int args)
{
	if (!GetConVarBool(g_hGoToServer))
		CPrintToChat(client, "%t", "Goto1", g_szChatPrefix);
	else if (!GetConVarBool(g_hCvarNoBlock))
			CPrintToChat(client, "%t", "Goto2", g_szChatPrefix);
		else
			if (g_bTimerRunning[client])
				CPrintToChat(client, "%t", "Goto3", g_szChatPrefix);
			else
			{
				char szPlayerName[MAX_NAME_LENGTH];
				char szOrgTargetName[MAX_NAME_LENGTH];
				char szTargetName[MAX_NAME_LENGTH];
				char szArg[MAX_NAME_LENGTH];
				if (args == 0)
				{
					Menu menu = CreateMenu(GoToMenuHandler);
					SetMenuTitle(menu, "Goto 菜单");
					int playerCount = 0;
					for (int i = 1; i <= MaxClients; i++)
					{
						if (IsValidClient(i) && IsPlayerAlive(i) && i != client && !IsFakeClient(i))
						{
							GetClientName(i, szPlayerName, MAX_NAME_LENGTH);
							AddMenuItem(menu, szPlayerName, szPlayerName);
							playerCount++;
						}
					}
					if (playerCount > 0)
					{
						SetMenuOptionFlags(menu, MENUFLAG_BUTTON_EXIT);
						DisplayMenu(menu, client, MENU_TIME_FOREVER);
					}
					else
					{
						delete menu;
					}
				}
				else
				{
					for (int i = 1; i < 20; i++)
					{
						GetCmdArg(i, szArg, MAX_NAME_LENGTH);
						if (!StrEqual(szArg, "", false))
						{
							if (i == 1)
								Format(szTargetName, MAX_NAME_LENGTH, "%s", szArg);
							else
								Format(szTargetName, MAX_NAME_LENGTH, "%s %s", szTargetName, szArg);
						}
					}
					Format(szOrgTargetName, MAX_NAME_LENGTH, "%s", szTargetName);
					StringToUpper(szTargetName);
					for (int i = 1; i <= MaxClients; i++)
					{
						if (IsValidClient(i) && IsPlayerAlive(i) && i != client)
						{
							GetClientName(i, szPlayerName, MAX_NAME_LENGTH);
							StringToUpper(szPlayerName);
							if ((StrContains(szPlayerName, szTargetName) != -1))
							{
								GotoMethod(client, i);
								return Plugin_Handled;
							}
						}
					}
					CPrintToChat(client, "%t", "PlayerNotFound", g_szChatPrefix, szOrgTargetName);
				}
			}
	return Plugin_Handled;
}

public Action Client_QuakeSounds(int client, int args)
{
	QuakeSounds(client);
	if (g_bEnableQuakeSounds[client])
		CPrintToChat(client, "%t", "QuakeSounds1", g_szChatPrefix);
	else
		CPrintToChat(client, "%t", "QuakeSounds2", g_szChatPrefix);
	return Plugin_Handled;
}

void QuakeSounds(int client, bool menu = false)
{
	g_bEnableQuakeSounds[client] = !g_bEnableQuakeSounds[client];
	if (menu)
		MiscellaneousOptions(client);
}

public Action Client_Stop(int client, int args)
{
	if (g_bTimerRunning[client])
	{
		// PlayerPanel(client);
		g_bTimerRunning[client] = false;
		g_fStartTime[client] = -1.0;
		g_fCurrentRunTime[client] = -1.0;
	}

	if (g_bWrcpTimeractivated[client])
	{
		g_bWrcpTimeractivated[client] = false;
		g_fStartWrcpTime[client] = -1.0;
		g_fCurrentWrcpRunTime[client] = -1.0;
	}

	// Strafe Sync
	g_iGoodGains[client] = 0;
	g_iTotalMeasures[client] = 0;
	
	g_bSaveLocTele[client] = false;

	return Plugin_Handled;
}

public void Action_NoClip(int client)
{
	if (IsValidClient(client) && !IsFakeClient(client) && IsPlayerAlive(client) && GetConVarBool(g_hNoClipS))
	{
		g_fLastTimeNoClipUsed[client] = GetGameTime();
		int team = GetClientTeam(client);
		if (team == 2 || team == 3)
		{
			MoveType mt = GetEntityMoveType(client);
			if (mt == MOVETYPE_WALK)
			{
				if (g_bTimerRunning[client])
				{
					Client_Stop(client, 1);
					g_fStartTime[client] = -1.0;
					g_fCurrentRunTime[client] = -1.0;
				}
				SetEntityMoveType(client, MOVETYPE_NOCLIP);
				SetEntityRenderMode(client, RENDER_NONE);
				SetEntData(client, FindSendPropInfo("CBaseEntity", "m_CollisionGroup"), 2, 4, true);
				g_bNoClip[client] = true;
				g_bInStartZone[client] = true;
				g_bWrcpTimeractivated[client] = false;
			}
		}
	}
	return;
}

public void Action_UnNoClip(int client)
{
	if (IsValidClient(client) && !IsFakeClient(client) && IsPlayerAlive(client))
	{
		g_fLastTimeNoClipUsed[client] = GetGameTime();
		int team = GetClientTeam(client);
		if (team == 2 || team == 3)
		{
			MoveType mt = GetEntityMoveType(client);
			if (mt == MOVETYPE_NOCLIP)
			{
				SetEntityMoveType(client, MOVETYPE_WALK);
				SetEntityRenderMode(client, RENDER_NORMAL);
				if (GetConVarBool(g_hCvarNoBlock))
					SetEntData(client, FindSendPropInfo("CBaseEntity", "m_CollisionGroup"), 2, 4, true);
				else
					SetEntData(client, FindSendPropInfo("CBaseEntity", "m_CollisionGroup"), 5, 4, true);
				g_bNoClip[client] = false;
			}
		}
	}
	return;
}

public void ckTopMenu(int client, int style)
{
	g_MenuLevel[client] = -1;
	Menu cktopmenu = CreateMenu(TopMenuHandler);

	char szTitle[128], szStyle[2];
	Format(szTitle, sizeof(szTitle), "排行榜菜单 - %s\n------------------------------\n", g_szStyleMenuPrint[style]);
	SetMenuTitle(cktopmenu, szTitle);
	IntToString(style, szStyle, sizeof(szStyle));

	if (GetConVarBool(g_hPointSystem))
		AddMenuItem(cktopmenu, szStyle, "前100名玩家");

	AddMenuItem(cktopmenu, szStyle, "地图前列");
	AddMenuItem(cktopmenu, szStyle, "奖励前列", !g_bhasBonus);

	SetMenuOptionFlags(cktopmenu, MENUFLAG_BUTTON_EXIT);
	DisplayMenu(cktopmenu, client, MENU_TIME_FOREVER);
}

public int TopMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char szBuffer[2];
		GetMenuItem(menu, param2, szBuffer, sizeof(szBuffer));
		int style = StringToInt(szBuffer);
		switch (param2)
		{
			case 0: db_selectTopPlayers(param1, style);
			case 1: SelectMapTop(param1, style);
			case 2: BonusTopMenu(param1, style);
		}
	}
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public void SelectMapTop(int client, int style)
{
	if (IsValidClient(client))
	{
		if (style > 0)
			db_selectStyleMapTopSurfers(client, g_szMapName, style);
		else
			db_selectTopSurfers(client, g_szMapName);
	}
}

public void BonusTopMenu(int client, int style)
{
	g_iWrcpMenuStyleSelect[client] = style;
	if (g_mapZoneGroupCount > 2)
	{
		char buffer[3];
		Menu sMenu = new Menu(BonusTopMenuHandler);
		sMenu.SetTitle("奖励选择器");

		if (g_mapZoneGroupCount > 1)
		{
			for (int i = 1; i < g_mapZoneGroupCount; i++)
			{
				IntToString(i, buffer, 3);
				sMenu.AddItem(buffer, g_szZoneGroupName[i]);
			}
		}
		else
		{
			CPrintToChat(client, "%t", "NoBonusOnMap", g_szChatPrefix);
			return;
		}

		sMenu.ExitButton = true;
		sMenu.Display(client, 60);
	}
	else {
		db_selectBonusTopSurfers(client, g_szMapName, 1, g_iWrcpMenuStyleSelect[client]);
	}
}

public int BonusTopMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		db_selectBonusTopSurfers(param1, g_szMapName, param2 + 1, g_iWrcpMenuStyleSelect[param1]);
	}
	else if (action == MenuAction_End)
	{
		delete menu;
	}

	return 0;
}

public void OptionMenu(int client)
{
	Menu optionmenu = CreateMenu(OptionMenuHandler);
	SetMenuTitle(optionmenu, "选项菜单\n \n\n \n");
	// #0
	if (g_bTimerEnabled[client])
		AddMenuItem(optionmenu, "ToggleTimer", "[开] 切换计时器\n \n");
	else
		AddMenuItem(optionmenu, "ToggleTimer", "[关] 切换计时器\n \n");

	AddMenuItem(optionmenu, "CentreHud", "居中 Hud 选项");
	AddMenuItem(optionmenu, "SideHud", "侧边 Hud 选项");
	AddMenuItem(optionmenu, "CSDOptions", "居中速度选项\n \n");
	AddMenuItem(optionmenu, "Miscellaneous", "其他选项");

	SetMenuOptionFlags(optionmenu, MENUFLAG_BUTTON_EXIT);
	DisplayMenu(optionmenu, client, MENU_TIME_FOREVER);
}

public int OptionMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		switch (param2)
		{
			case 0:
			{
				ToggleTimer(param1);
				OptionMenu(param1);
			}
			case 1: CentreHudOptions(param1, 0);
			case 2: SideHudOptions(param1, 0);
			case 3: CSDOptions(param1);
			case 4: MiscellaneousOptions(param1);
		}
	}
	else if (action == MenuAction_End)
	{
		delete menu;
	}

	return 0;
}

public void CentreHudOptions(int client, int item)
{
	Menu menu = CreateMenu(CentreHudOptionsHandler);
	SetMenuTitle(menu, "选项菜单 - 中心 Hud\n \n");

	if (g_bCentreHud[client])
		AddMenuItem(menu, "", "[开] 中心 Hud");
	else
		AddMenuItem(menu, "", "[关] 中心 Hud");

	AddMenuItem(menu, "", "重置模块\n \n");

	AddMenuItem(menu, "左上模块", "左上模块");
	AddMenuItem(menu, "右上模块", "右上模块\n \n");
	AddMenuItem(menu, "左中模块", "左中模块");
	AddMenuItem(menu, "右中模块", "右中模块\n \n");
	AddMenuItem(menu, "左下模块", "左下模块");
	AddMenuItem(menu, "右下模块", "右下模块");

	SetMenuExitBackButton(menu, true);

	if (item < 6)
		item = 0;
	else if (item < 12)
		item = 6;
		
	DisplayMenuAtItem(menu, client, item, MENU_TIME_FOREVER);
}

public int CentreHudOptionsHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		if (param2 == 0)
		{
			g_bCentreHud[param1] = !g_bCentreHud[param1];
			CentreHudOptions(param1, 0);
		}
		else if (param2 == 1)
		{
			g_bCentreHud[param1] = true;
			g_iCentreHudModule[param1][0] = 1;
			g_iCentreHudModule[param1][1] = 2;
			g_iCentreHudModule[param1][2] = 3;
			g_iCentreHudModule[param1][3] = 4;
			g_iCentreHudModule[param1][4] = 5;
			g_iCentreHudModule[param1][5] = 6;
			CentreHudOptions(param1, 0);
		}
		else
		{
			char szTitle[128];
			int module;
			GetMenuItem(menu, param2, szTitle, sizeof(szTitle));
			if (StrEqual(szTitle, "左上模块"))
				module = 0;
			else if (StrEqual(szTitle, "右上模块"))
				module = 1;
			else if (StrEqual(szTitle, "左中模块"))
				module = 2;
			else if (StrEqual(szTitle, "右中模块"))
				module = 3;
			else if (StrEqual(szTitle, "左下模块"))
				module = 4;
			else if (StrEqual(szTitle, "右下模块"))
				module = 5;
			else
				module = 0;

			CentreHudModulesMenu(param1, module, szTitle);
		}	
	}
	else if (action == MenuAction_Cancel)
		OptionMenu(param1);
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public void CentreHudModulesMenu(int client, int module, const char[] szTitle)
{
	Menu menu = CreateMenu(CentreHudModulesMenuHandler);
	char szTitle2[256];
	Format(szTitle2, sizeof(szTitle2), "%s\n \n", szTitle);
	SetMenuTitle(menu, szTitle2);

	// Toggle Module
	if (g_iCentreHudModule[client][module] == 0)
		AddMenuItem(menu, szTitle, "[开] 切换模块\n \n");
	else
		AddMenuItem(menu, szTitle, "[关] 切换模块\n \n");

	// Timer
	if (g_iCentreHudModule[client][module] == 1)
		AddMenuItem(menu, szTitle, "[开] 计时器");
	else
		AddMenuItem(menu, szTitle, "[关] 计时器");

	// WR
	if (g_iCentreHudModule[client][module] == 2)
		AddMenuItem(menu, szTitle, "[开] 服务器记录");
	else
		AddMenuItem(menu, szTitle, "[关] 服务器记录");

	// PB
	if (g_iCentreHudModule[client][module] == 3)
		AddMenuItem(menu, szTitle, "[开] 个人最佳");
	else
		AddMenuItem(menu, szTitle, "[关] 个人最佳");

	// Rank
	if (g_iCentreHudModule[client][module] == 4)
		AddMenuItem(menu, szTitle, "[开] 排名显示");
	else
		AddMenuItem(menu, szTitle, "[关] 排名显示");

	// Stage
	if (g_iCentreHudModule[client][module] == 5)
		AddMenuItem(menu, szTitle, "[开] 阶段显示");
	else
		AddMenuItem(menu, szTitle, "[关] 阶段显示");

	// Speed
	if (g_iCentreHudModule[client][module] == 6)
		AddMenuItem(menu, szTitle, "[开] 速度显示");
	else
		AddMenuItem(menu, szTitle, "[关] 速度显示");

	// Strafe Sync
	if (g_iCentreHudModule[client][module] == 7)
		AddMenuItem(menu, szTitle, "[开] 转向同步");
	else
		AddMenuItem(menu, szTitle, "[关] 转向同步");

	SetMenuExitBackButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int CentreHudModulesMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char szModule[128];
		int module;
		GetMenuItem(menu, param2, szModule, sizeof(szModule));
		if (StrEqual("左上模块", szModule))
			module = 0;
		else if (StrEqual("右上模块", szModule))
			module = 1;
		else if (StrEqual("左中模块", szModule))
			module = 2;
		else if (StrEqual("右中模块", szModule))
			module = 3;
		else if (StrEqual("左下模块", szModule))
			module = 4;
		else if (StrEqual("右下模块", szModule))
			module = 5;
		else
		{
			CPrintToChat(param1, "%t", "Commands37", g_szChatPrefix);
			delete menu;
		}

		g_iCentreHudModule[param1][module] = param2;
		CentreHudModulesMenu(param1, module, szModule);
	}
	else if (action == MenuAction_Cancel)
		CentreHudOptions(param1, 0);
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public void SideHudOptions(int client, int item)
{
	Menu menu = CreateMenu(SideHudOptionsHandler);
	SetMenuTitle(menu, "选项菜单 - 侧边 Hud\n \n");

	AddMenuItem(menu, "模块 1", "模块 1");
	AddMenuItem(menu, "模块 2", "模块 2");
	AddMenuItem(menu, "模块 3", "模块 3");
	AddMenuItem(menu, "模块 4", "模块 4");
	AddMenuItem(menu, "模块 5", "模块 5\n \n");

	// 侧边 Hud
	if (g_bSideHud[client])
		AddMenuItem(menu, "", "[开] 侧边 Hud");
	else
		AddMenuItem(menu, "", "[关] 侧边 Hud");

	AddMenuItem(menu, "", "如何恢复旧的观战菜单？");

	SetMenuExitBackButton(menu, true);

	if (item < 6)
		item = 0;
	else if (item < 12)
		item = 6;

	DisplayMenuAtItem(menu, client, item, MENU_TIME_FOREVER);
}

public int SideHudOptionsHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		if (param2 == 5)
		{
			g_bSideHud[param1] = !g_bSideHud[param1];
			SideHudOptions(param1, 0);
		}
		else if (param2 == 6)
		{
			CPrintToChat(param1, "%t", "Commands38", g_szChatPrefix);
			SideHudOptions(param1, 6);
		}
		else
		{
			char szTitle[32];
			GetMenuItem(menu, param2, szTitle, sizeof(szTitle));
			SideHudModulesMenu(param1, param2, szTitle);
		}
	}
	else if (action == MenuAction_Cancel)
		OptionMenu(param1);
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public void SideHudModulesMenu(int client, int module, char[] szTitle)
{
	Menu menu = CreateMenu(SideHudModulesMenuHandler);
	char szTitle2[256];
	Format(szTitle2, sizeof(szTitle2), "%s\n \n", szTitle);
	SetMenuTitle(menu, szTitle2);

	// 切换模块
	if (g_iSideHudModule[client][module] == 0)
		AddMenuItem(menu, szTitle, "[关] 切换模块\n \n");
	else
		AddMenuItem(menu, szTitle, "[开] 切换模块\n \n");

	// 剩余时间
	if (g_iSideHudModule[client][module] == 1)
		AddMenuItem(menu, szTitle, "[开] 剩余时间");
	else
		AddMenuItem(menu, szTitle, "[关] 剩余时间");

	// 服务器记录信息
	if (g_iSideHudModule[client][module] == 2)
		AddMenuItem(menu, szTitle, "[开] 服务器记录信息");
	else
		AddMenuItem(menu, szTitle, "[关] 服务器记录信息");

	// 个人最佳信息
	if (g_iSideHudModule[client][module] == 3)
		AddMenuItem(menu, szTitle, "[开] 个人最佳信息");
	else
		AddMenuItem(menu, szTitle, "[关] 个人最佳信息");

	// 阶段信息
	if (g_iSideHudModule[client][module] == 4)
		AddMenuItem(menu, szTitle, "[开] 阶段信息");
	else
		AddMenuItem(menu, szTitle, "[关] 阶段信息");

	// 观战列表
	if (g_iSideHudModule[client][module] == 5)
		AddMenuItem(menu, szTitle, "[开] 观战列表");
	else
		AddMenuItem(menu, szTitle, "[关] 观战列表");


	SetMenuExitBackButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int SideHudModulesMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char szModule[128];
		int module;
		GetMenuItem(menu, param2, szModule, sizeof(szModule));

		if (StrEqual("模块 1", szModule))
			module = 0;
		else if (StrEqual("模块 2", szModule))
			module = 1;
		else if (StrEqual("模块 3", szModule))
			module = 2;
		else if (StrEqual("模块 4", szModule))
			module = 3;
		else if (StrEqual("模块 5", szModule))
			module = 4;
		else
		{
			CPrintToChat(param1, "%t", "Commands39", g_szChatPrefix);
			delete menu;
		}

		g_iSideHudModule[param1][module] = param2;

		if (g_iSideHudModule[param1][0] == 5 && (g_iSideHudModule[param1][1] == 0 && g_iSideHudModule[param1][2] == 0 && g_iSideHudModule[param1][3] == 0 && g_iSideHudModule[param1][4] == 0))
			g_bSpecListOnly[param1] = true;
		else
			g_bSpecListOnly[param1] = false;

		SideHudModulesMenu(param1, module, szModule);
	}
	else if (action == MenuAction_Cancel)
		SideHudOptions(param1, 0);
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public void MiscellaneousOptions(int client)
{
	Menu menu = CreateMenu(MiscellaneousOptionsHandler);
	SetMenuTitle(menu, "选项菜单 - 其他\n \n");

	// 隐藏玩家
	if (g_bHide[client])
		AddMenuItem(menu, "", "[开] 隐藏玩家");
	else
		AddMenuItem(menu, "", "[关] 隐藏玩家");

	// 计时器音效
	if (g_bEnableQuakeSounds[client])
		AddMenuItem(menu, "", "[开] 计时器音效");
	else
		AddMenuItem(menu, "", "[关] 计时器音效");

	// 传送点位置
	if (g_iTeleSide[client] == 0)
		AddMenuItem(menu, "", "[左] 起始位置");
	else
		AddMenuItem(menu, "", "[右] 起始位置");

	// 隐藏聊天
	if (g_bHideChat[client])
		AddMenuItem(menu, "", "[开] 隐藏聊天");
	else
		AddMenuItem(menu, "", "[关] 隐藏聊天");

	// 隐藏武器
	if (g_bViewModel[client])
		AddMenuItem(menu, "", "[关] 隐藏武器");
	else
		AddMenuItem(menu, "", "[开] 隐藏武器");

	// 显示预速度
	if (g_iPrespeedText[client])
		AddMenuItem(menu, "", "[开] 起始速度消息");
	else
		AddMenuItem(menu, "", "[关] 起始速度消息");

	// 显示提示
	if (g_bAllowHints[client])
		AddMenuItem(menu, "", "[开] 提示");
	else
		AddMenuItem(menu, "", "[关] 提示");

	// 预速度模式
	if (g_PreSpeedMode[client] == 0)
		AddMenuItem(menu, "", "[XY] 起始速度模式");
	else if (g_PreSpeedMode[client] == 1)
		AddMenuItem(menu, "", "[XYZ] 起始速度模式");
	else
		AddMenuItem(menu, "", "[Z] 起始速度模式");

	
	SetMenuExitBackButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int MiscellaneousOptionsHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		switch (param2)
		{
			case 0: HideMethod(param1, true);
			case 1: QuakeSounds(param1, true);
			case 2: TeleSide(param1, true);
			case 3: HideChat(param1, true);
			case 4: HideViewModel(param1, true);
			case 5: PrespeedText(param1, true);
			case 6: HintsText(param1, true);
			case 7: PreSpeedMode(param1, true);
		}
	}
	else if (action == MenuAction_Cancel)
		OptionMenu(param1);
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public void CSDOptions(int client)
{
	Menu menu = CreateMenu(CSDOptionsHandler);
	SetMenuTitle(menu, "居中速度选项菜单\n \n");

	// 居中速度显示
	if (g_bCenterSpeedDisplay[client])
		AddMenuItem(menu, "", "[开] 居中速度显示");
	else
		AddMenuItem(menu, "", "[关] 居中速度显示");

	// 速度模式
	if (g_SpeedMode[client] == 0)
		AddMenuItem(menu, "", "[XY] 速度模式");
	else if (g_SpeedMode[client] == 1)
		AddMenuItem(menu, "", "[XYZ] 速度模式");
	else
		AddMenuItem(menu, "", "[Z] 速度模式");

	// 居中速度位置
	char Display_String[256];
	// X轴位置
	Format(Display_String, 256, "位置 X : %f", g_fCSD_POS_X[client]);
	AddMenuItem(menu, "", Display_String);
	// Y轴位置
	Format(Display_String, 256, "位置 Y : %f", g_fCSD_POS_Y[client]);
	AddMenuItem(menu, "", Display_String);

	// 速度渐变
	if (g_SpeedGradient[client] == 0)
		AddMenuItem(menu, "", "[白色] 速度渐变");
	else if (g_SpeedGradient[client] == 1)
		AddMenuItem(menu, "", "[红色] 速度渐变");
	else if (g_SpeedGradient[client] == 2)
		AddMenuItem(menu, "", "[绿色] 速度渐变");
	else if (g_SpeedGradient[client] == 3)
		AddMenuItem(menu, "", "[蓝色] 速度渐变");
	else if (g_SpeedGradient[client] == 4)
		AddMenuItem(menu, "", "[黄色] 速度渐变");
	else if (g_SpeedGradient[client] == 5)
		AddMenuItem(menu, "", "[动态] 速度渐变");
	else
		AddMenuItem(menu, "", "[自定义] 速度渐变");

	// 居中速度自定义数值
	char Display_String_Custom[256];
	// 红色
	Format(Display_String_Custom, 256, "[红色] : %i", g_iCSD_R[client]);
	AddMenuItem(menu, "", Display_String_Custom);
	// 绿色
	Format(Display_String_Custom, 256, "[绿色] : %i", g_iCSD_G[client]);
	AddMenuItem(menu, "", Display_String_Custom);
	// 蓝色
	Format(Display_String_Custom, 256, "[蓝色] : %i", g_iCSD_B[client]);
	AddMenuItem(menu, "", Display_String_Custom);

	// 居中速度更新频率
	if (g_iCSDUpdateRate[client] == 0)
		AddMenuItem(menu, "", "[慢速] 居中速度更新频率");
	else if (g_iCSDUpdateRate[client] == 1)
		AddMenuItem(menu, "", "[中速] 居中速度更新频率");
	else
		AddMenuItem(menu, "", "[快速] 居中速度更新频率");
	
	SetMenuExitBackButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int CSDOptionsHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		switch (param2)
		{	
			case 0: CenterSpeedDisplay(param1, true);
			case 1: SpeedMode(param1, true);
			case 2: CSD_PosX(param1, true);
			case 3: CSD_PosY(param1, true);
			case 4: SpeedGradient(param1, true);
			case 5: ChangeColor(param1, 0, true);
			case 6: ChangeColor(param1, 1, true);
			case 7: ChangeColor(param1, 2, true);
			case 8: CSDUpdateRate(param1, true);
		}
	}
	else if (action == MenuAction_Cancel)
		OptionMenu(param1);
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

// fluffys
public Action Command_PlayerTitle(int client, int args)
{
	if (IsValidClient(client) && IsPlayerVip(client, _, true))
		CustomTitleMenu(client);
	return Plugin_Handled;
}

public Action Command_SetDbTitle(int client, int args)
{
	if (!IsValidClient(client) || !IsPlayerVip(client, _, true))
		return Plugin_Handled;

	char arg[256];

	if (args == 0)
	{
		if (g_bdbHasCustomTitle[client])
		{
			db_toggleCustomPlayerTitle(client);
		}
		else
		{
			CPrintToChat(client, "%t", "Commands40", g_szChatPrefix);
		}
	}
	else
	{
		GetCmdArg(1, arg, 256);
		char upperArg[256];
		char noColoursArg[256];
		upperArg = arg;
		StringToUpper(upperArg);
		noColoursArg = upperArg;
		parseColorsFromString(noColoursArg, 256);

		if (strlen(noColoursArg) > 20)
		{
			CPrintToChat(client, "%t", "Commands41", g_szChatPrefix);

			return Plugin_Handled;
		}
		else if (StrContains(upperArg, "{RED}") != -1)
			ReplaceString(arg, 256, "{red}", "{lightred}", false);
		else if (StrContains(upperArg, "{LIMEGREEN}") != -1)
			ReplaceString(arg, 256, "{limegreen}", "{lime}");
		else if (StrContains(upperArg, "{WHITE}") != -1)
			ReplaceString(arg, 256, "{white}", "{default}", false);

		// Check if arg is in unallowed titles array
		for (int i = 0; i < sizeof(UnallowedTitles); i++)
		{
			if (StrContains(UnallowedTitles[i], upperArg)!=-1)
			{
				arg = "{red}DISALLOWED";
				break;
			}
		}

		db_checkCustomPlayerTitle(client, arg);
	}

	return Plugin_Handled;
}

public Action Command_JoinMsg(int client, int args)
{
	if (!IsValidClient(client) || !IsPlayerVip(client, _, true))
		return Plugin_Handled;

	if (args == 0)
	{
		CReplyToCommand(client, "%t", "Commands73", g_szChatPrefix);
		return Plugin_Handled;
	}

	char szArg[256];
	GetCmdArg(1, szArg, sizeof(szArg));
	db_setJoinMsg(client, szArg);

	return Plugin_Handled;
}

public Action Command_ToggleTitle(int client, int args)
{
	if (!IsValidClient(client) || !IsPlayerVip(client, _, true))
		return Plugin_Handled;

	db_toggleCustomPlayerTitle(client);

	return Plugin_Handled;
}

public Action Command_SetDbNameColour(int client, int args)
{
	if (!IsValidClient(client) || !IsPlayerVip(client, _, true))
		return Plugin_Handled;

	char arg[128];

	if (args == 0)
	{
			CPrintToChat(client, "%t", "Commands42", g_szChatPrefix);
	}
	else
	{
		GetCmdArg(1, arg, 128);
		char upperArg[128];
		upperArg = arg;
		StringToUpper(upperArg);
		if (StrContains(upperArg, "{DEFAULT}", false)!=-1 || StrContains(upperArg, "{WHITE}")!=-1)
		{
			arg = "0";
		}
		else if (StrContains(upperArg, "{DARKRED}", false)!=-1)
		{
			arg = "1";
		}
		else if (StrContains(upperArg, "{GREEN}", false)!=-1)
		{
			arg = "2";
		}
		else if (StrContains(upperArg, "{LIMEGREEN}", false)!=-1 || StrContains(upperArg, "{LIME}")!=-1)
		{
			arg = "3";
		}
		else if (StrContains(upperArg, "{BLUE}", false)!=-1)
		{
			arg = "4";
		}
		else if (StrContains(upperArg, "{LIGHTGREEN}", false)!=-1)
		{
		 	arg = "5";
		}
		else if (StrContains(upperArg, "{RED}", false)!=-1)
		{
			arg = "6";
		}
		else if (StrContains(upperArg, "{GREY}", false)!=-1 || StrContains(upperArg, "{GRAY}")!=-1)
		{
			arg = "7";
		}
		else if (StrContains(upperArg, "{YELLOW}", false)!=-1)
		{
		 	arg = "8";
		}
		else if (StrContains(upperArg, "{LIGHTBLUE}", false)!=-1)
		{
			arg = "9";
		}
		else if (StrContains(upperArg, "{DARKBLUE}", false)!=-1)
		{
			arg = "10";
		}
		else if (StrContains(upperArg, "{PINK}", false)!=-1)
		{
			arg = "11";
		}
		else if (StrContains(upperArg, "{LIGHTRED}", false)!=-1)
		{
			arg = "12";
		}
		else if (StrContains(upperArg, "{PURPLE}", false)!=-1)
		{
			arg = "13";
		}
		else if (StrContains(upperArg, "{DARKGREY}", false)!=-1 || StrContains(upperArg, "{DARKGRAY}")!=-1)
		{
			arg = "14";
		}
		else if (StrContains(upperArg, "{ORANGE}", false)!=-1)
		{
			arg = "15";
		}
		else
		{
			arg = "0";
		}

		db_checkCustomPlayerNameColour(client, arg);
	}

	return Plugin_Handled;
}

public Action Command_SetDbTextColour(int client, int args)
{
	if (!IsValidClient(client) || !IsPlayerVip(client, _, true))
		return Plugin_Handled;

	char arg[128];

	if (args == 0)
	{
		CPrintToChat(client, "%t", "Commands43", g_szChatPrefix);
	}
	else
	{
		GetCmdArg(1, arg, 128);
		char upperArg[128];
		upperArg = arg;
		StringToUpper(upperArg);
		if (StrContains(upperArg, "{DEFAULT}", false)!=-1 || StrContains(upperArg, "{WHITE}")!=-1)
		{
			arg = "0";
		}
		else if (StrContains(upperArg, "{DARKRED}", false)!=-1)
		{
			arg = "1";
		}
		else if (StrContains(upperArg, "{GREEN}", false)!=-1)
		{
			arg = "2";
		}
		else if (StrContains(upperArg, "{LIMEGREEN}", false)!=-1 || StrContains(upperArg, "{LIME}", false)!=-1)
		{
			arg = "3";
		}
		else if (StrContains(upperArg, "{BLUE}", false)!=-1)
		{
			arg = "4";
		}
		else if (StrContains(upperArg, "{LIGHTGREEN}", false)!=-1 || StrContains(upperArg, "{OLIVE}", false)!=-1)
		{
		 	arg = "5";
		}
		else if (StrContains(upperArg, "{RED}", false)!=-1)
		{
			arg = "6";
		}
		else if (StrContains(upperArg, "{GREY}", false)!=-1 || StrContains(upperArg, "{GRAY}")!=-1)
		{
			arg = "7";
		}
		else if (StrContains(upperArg, "{YELLOW}", false)!=-1)
		{
		 	arg = "8";
		}
		else if (StrContains(upperArg, "{LIGHTBLUE}", false)!=-1)
		{
			arg = "9";
		}
		else if (StrContains(upperArg, "{DARKBLUE}", false)!=-1)
		{
			arg = "10";
		}
		else if (StrContains(upperArg, "{PINK}", false)!=-1)
		{
			arg = "11";
		}
		else if (StrContains(upperArg, "{LIGHTRED}", false)!=-1)
		{
			arg = "12";
		}
		else if (StrContains(upperArg, "{PURPLE}", false)!=-1)
		{
			arg = "13";
		}
		else if (StrContains(upperArg, "{DARKGREY}", false)!=-1 || StrContains(upperArg, "{DARKGRAY}")!=-1)
		{
			arg = "14";
		}
		else if (StrContains(upperArg, "{ORANGE}", false)!=-1)
		{
			arg = "15";
		}
		else
		{
			arg = "0";
		}

		db_checkCustomPlayerTextColour(client, arg);
	}

	return Plugin_Handled;
}

public Action Command_ListColours(int client, int args)
{
	CPrintToChat(client, "%t", "Commands44", g_szChatPrefix);
	return Plugin_Handled;
}

public Action Client_Wrcp(int client, int args)
{
	if (args == 0)
		Format(g_szWrcpMapSelect[client], sizeof(g_szWrcpMapSelect), g_szMapName);
	else
		GetCmdArg(1, g_szWrcpMapSelect[client], 128);
	WrcpStyleSelectMenu(client);
	return Plugin_Handled;
}

public void WrcpStyleSelectMenu(int client)
{
	Menu menu = CreateMenu(WrcpStyleSelectMenuHandler);
	SetMenuTitle(menu, "SRCP: 选择风格");
	AddMenuItem(menu, "", "普通");
	AddMenuItem(menu, "", "侧滑");
	AddMenuItem(menu, "", "半侧滑");
	AddMenuItem(menu, "", "倒滑");
	AddMenuItem(menu, "", "低重力");
	AddMenuItem(menu, "", "慢速");
	AddMenuItem(menu, "", "快进");
	AddMenuItem(menu, "", "Freestyle");
	SetMenuExitButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int WrcpStyleSelectMenuHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		g_ProfileStyleSelect[param1] = param2;
		if (StrEqual(g_szMapName, g_szWrcpMapSelect[param1]))
			WrcpMenu(param1, 0, param2);
		else
			WrcpMenu(param1, 1, param2);
	}
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public void WrcpMenu(int client, int args, int style)
{
	// Spam Protection
	float diff = GetGameTime() - g_fWrcpMenuLastQuery[client];
	if (diff < 0.5)
	{
		g_bSelectWrcp[client] = false;
		return;
	}
	g_iWrcpMenuStyleSelect[client] = style;
	g_fWrcpMenuLastQuery[client] = GetGameTime();

	char szStageString[MAXPLAYERS + 1];
	char stage[MAXPLAYERS + 1];
	// No Argument
	if (args == 0)
	{
		if (!g_bhasStages)
		{
			CPrintToChat(client, "%t", "Commands87", g_szChatPrefix);
			return;
		}

		g_szWrcpMapSelect[client] = g_szMapName;
		Menu menu;
		if (style == 0)
		{
			menu = CreateMenu(StageSelectMenuHandler);
			SetMenuTitle(menu, "%s: 选择关卡 \n------------------------------\n", g_szMapName);
		}
		else if (style != 0)
		{
			g_StyleStageSelect[client] = style;
			menu = CreateMenu(StageStyleSelectMenuHandler);
			SetMenuTitle(menu, "%s: 选择关卡 [%s] \n------------------------------\n", g_szMapName, g_szStyleMenuPrint[style]);
		}
		int stageCount = g_TotalStages;
		for (int i = 1; i <= stageCount; i++)
		{
	 			stage[0] = i;
				Format(szStageString, sizeof(szStageString), "关卡 %i", i);
				AddMenuItem(menu, stage[0], szStageString);
		}
		g_bSelectWrcp[client] = true;
		SetMenuOptionFlags(menu, MENUFLAG_BUTTON_EXIT);
		DisplayMenu(menu, client, MENU_TIME_FOREVER);
		return;
	}
	else
	{
		if (StrContains(g_szWrcpMapSelect[client], "#", false) != -1)
		{
			ReplaceString(g_szWrcpMapSelect[client], 128, "#", "", false);
			if (style == 0)
				db_viewWrcpMapRecord(client);
			else
				db_viewWrcpStyleMapRecord(client, style);
		}
		else
		{
			if (style == 0)
				db_viewWrcpMap(client, g_szWrcpMapSelect[client]);
			else
				db_viewStyleWrcpMap(client, g_szWrcpMapSelect[client], style);
		}
	}
}

public int StageSelectMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char info[32];
		GetMenuItem(menu, param2, info, sizeof(info));
		db_selectStageTopSurfers(param1, info, g_szWrcpMapSelect[param1]);
	}
	else if (action == MenuAction_End)
	{
		if (IsValidClient(param1))
			g_bSelectWrcp[param1] = false;
		delete menu;
	}

	return 0;
}

public int StageStyleSelectMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		int style = g_StyleStageSelect[param1];
		char info[32];
		GetMenuItem(menu, param2, info, sizeof(info));
		db_selectStageStyleTopSurfers(param1, info, g_szWrcpMapSelect[param1], style);
	}
	else
	{
		if (action == MenuAction_End)
		{
			if (IsValidClient(param1))
				g_bSelectWrcp[param1] = false;
			delete menu;
		}
	}

	return 0;
}

// fluffys sm_gb
public Action Command_GoBack(int client, int args)
{
	if (g_Stage[0][client] <= 1)
		Command_Restart(client, 1);
	else
		teleportClient(client, 0, g_Stage[0][client] - 1, false);

	return Plugin_Handled;
}

// Styles
public Action Client_SelectStyle(int client, int args)
{
	styleSelectMenu(client);
	return Plugin_Handled;
}

public void styleSelectMenu(int client)
{
	Menu styleSelect = CreateMenu(StyleTypeSelectMenuHandler);
	SetMenuTitle(styleSelect, "当前风格：%s\n------------------------------\n", g_szInitalStyle[client]);
	AddMenuItem(styleSelect, "ranked", "排名风格");
	AddMenuItem(styleSelect, "fun", "娱乐风格");
	SetMenuOptionFlags(styleSelect, MENUFLAG_BUTTON_EXIT);
	DisplayMenu(styleSelect, client, MENU_TIME_FOREVER);
}

public int StyleTypeSelectMenuHandler(Menu styleSelect, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		switch (param2)
		{
			case 0:
			{
				Menu styleSelect2 = CreateMenu(StyleSelectMenuHandler);
				SetMenuTitle(styleSelect2, "当前风格：%s\n------------------------------\n", g_szInitalStyle[param1]);
				AddMenuItem(styleSelect2, "0", "正常");
				AddMenuItem(styleSelect2, "1", "侧滑");
				AddMenuItem(styleSelect2, "2", "半侧滑");
				AddMenuItem(styleSelect2, "3", "倒滑");
				SetMenuOptionFlags(styleSelect2, MENUFLAG_BUTTON_EXIT);
				DisplayMenu(styleSelect2, param1, MENU_TIME_FOREVER);
			}
			case 1:
			{
				Menu styleSelect2 = CreateMenu(StyleSelectMenuHandler);
				SetMenuTitle(styleSelect2, "当前风格：%s\n------------------------------\n", g_szInitalStyle[param1]);
				AddMenuItem(styleSelect2, "0", "正常 - 排名");
				AddMenuItem(styleSelect2, "4", "低重力");
				AddMenuItem(styleSelect2, "5", "慢速");
				AddMenuItem(styleSelect2, "6", "快进");
				AddMenuItem(styleSelect2, "7", "Freestyle");
				SetMenuOptionFlags(styleSelect2, MENUFLAG_BUTTON_EXIT);
				DisplayMenu(styleSelect2, param1, MENU_TIME_FOREVER);
			}
		}
	}
	else if (action == MenuAction_End)
		delete styleSelect;

	return 0;
}

public int StyleSelectMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char info[32];
		GetMenuItem(menu, param2, info, sizeof(info));
		if (StrContains(info, "1", false)!= -1)
		{
			g_iCurrentStyle[param1] = 1;
			g_iInitalStyle[param1] = 1;
			Format(g_szInitalStyle[param1], 128, "Sideways");
			Format(g_szStyleHud[param1], 32, "[SW]");
			g_bRankedStyle[param1] = true;
			g_bFunStyle[param1] = false;
		}
		else if (StrContains(info, "2", false)!= -1)
		{
			g_iCurrentStyle[param1] = 2;
			g_iInitalStyle[param1] = 2;
			Format(g_szInitalStyle[param1], 128, "Half-Sideways");
			Format(g_szStyleHud[param1], 32, "[HSW]");
			g_bRankedStyle[param1] = true;
			g_bFunStyle[param1] = false;
		}
		else if (StrContains(info, "3", false)!= -1)
		{
			g_iCurrentStyle[param1] = 3;
			g_iInitalStyle[param1] = 3;
			Format(g_szInitalStyle[param1], 128, "Backwards");
			Format(g_szStyleHud[param1], 32, "[BW]");
			g_bRankedStyle[param1] = true;
			g_bFunStyle[param1] = false;
		}
		else if (StrContains(info, "4", false)!= -1)
		{
			g_iCurrentStyle[param1] = 4;
			g_iInitalStyle[param1] = 4;
			Format(g_szInitalStyle[param1], 128, "Low-Gravity");
			Format(g_szStyleHud[param1], 32, "[LG]");
			SetEntityGravity(param1, 0.5);
			g_bRankedStyle[param1] = false;
			g_bFunStyle[param1] = true;
		}
		else if (StrContains(info, "5", false)!= -1)
		{
			g_iCurrentStyle[param1] = 5;
			g_iInitalStyle[param1] = 5;
			Format(g_szInitalStyle[param1], 128, "Slow Motion");
			Format(g_szStyleHud[param1], 32, "[SM]");
			SetEntPropFloat(param1, Prop_Data, "m_flLaggedMovementValue", 0.5);
			g_bRankedStyle[param1] = false;
			g_bFunStyle[param1] = true;
		}
		else if (StrContains(info, "6", false)!= -1)
		{
			g_iCurrentStyle[param1] = 6;
			g_iInitalStyle[param1] = 6;
			Format(g_szInitalStyle[param1], 128, "Fast Forward");
			Format(g_szStyleHud[param1], 32, "[FF]");
			SetEntPropFloat(param1, Prop_Data, "m_flLaggedMovementValue", 1.5);
			g_bRankedStyle[param1] = false;
			g_bFunStyle[param1] = true;
		}
		else if (StrContains(info, "7", false) != -1)
		{
			g_iCurrentStyle[param1] = 7;
			g_iInitalStyle[param1] = 7;
			Format(g_szInitalStyle[param1], 128, "Freestyle");
			Format(g_szStyleHud[param1], 32, "[FS]");
			g_bRankedStyle[param1] = false;
			g_bFunStyle[param1] = true;
			g_bAutoBhop = true;
			g_bAutoBhopClient[param1] = true;
		}
		else
		{
			g_iCurrentStyle[param1] = 0;
			g_iInitalStyle[param1] = 0;
			Format(g_szInitalStyle[param1], 128, "Normal");
			Format(g_szStyleHud[param1], 32, "");
			g_bRankedStyle[param1] = true;
			g_bFunStyle[param1] = false;
		}

		Command_Restart(param1, 1);
	}
	else
	{
		if (action == MenuAction_Cancel)
			styleSelectMenu(param1);
		if (action == MenuAction_End)
			delete menu;
	}

	return 0;
}

// Rate Limiting Command - Limits every 2 seconds
public void RateLimit(int client)
{
	if (GetGameTime() - g_fCommandLastUsed[client] < 2)
	{
		CPrintToChat(client, "%t", "Commands46", g_szChatPrefix);
		g_bRateLimit[client] = true;
	}
	else
	{
		g_bRateLimit[client] = false;
	}

	g_fCommandLastUsed[client] = GetGameTime();
}

// Rate Limiting Command - Limits every 0.1 seconds
public bool RateLimitTeleport(int client) 
{
	float currentTime = GetGameTime();
	if (currentTime - g_fCommandLastUsed[client] < 0.1)
	{
		CPrintToChat(client, "%t", "Commands88", g_szChatPrefix);
		return true;
	}
	
	g_fCommandLastUsed[client] = GetGameTime();
	return false;
}


public Action Command_SelectMapTime(int client, int args)
{
	RateLimit(client);

	if (!g_bRateLimit[client])
	{
		if (args == 0)
		{
			db_selectMapRank(client, g_szSteamID[client], g_szMapName);
			return Plugin_Handled;
		}
		else
		{
			char arg1[128];
			char arg2[128];
			GetCmdArg(1, arg1, sizeof(arg1));
			GetCmdArg(2, arg2, sizeof(arg2));

			// bool bPlayerFound = false;
			char szSteamId2[32];
			char szName[MAX_NAME_LENGTH];

			if (StrContains(arg1[0], "surf_", true) != -1) // if arg1 contains a surf map
			{
				db_selectMapRank(client, g_szSteamID[client], arg1);
				return Plugin_Handled;
			}
			else if (StrContains(arg1, "@", false) != -1) // Rank Number / Group
			{
				int rank;
				ReplaceString(arg1, 128, "@", "", false);
				if (StrContains(arg1, "g", false) != -1) // Group
				{
					ReplaceString(arg1, 128, "g", "", false);
					int group;
					group = StringToInt(arg1);
					if (group == 1)
						rank = g_G1Top;
					else if (group == 2)
						rank = g_G2Top;
					else if (group == 3)
						rank = g_G3Top;
					else if (group == 4)
						rank = g_G4Top;
					else if (group == 5)
						rank = g_G5Top;
				}
				else
					rank = StringToInt(arg1);

				if (!arg2[0])
					db_selectMapRankUnknownWithMap(client, g_szMapName, rank);
				else
					db_selectMapRankUnknown(client, arg2, rank);

				return Plugin_Handled;
			}
			else // else it will contain a clients name
			{
				for (int i = 1; i <= MaxClients; i++)
				{
					if (IsValidClient(i))
					{
						GetClientName(i, szName, MAX_NAME_LENGTH);
						StringToUpper(szName);
						StringToUpper(arg1);
						if ((StrContains(szName, arg1) != -1))
						{
							// bPlayerFound = true;
							GetClientAuthId(i, AuthId_Steam2, szSteamId2, MAX_NAME_LENGTH, true);
						}
					}
				}
			}
			if (!arg2[0]) // no 2nd argument
			{
				db_selectMapRank(client, szSteamId2, g_szMapName);
			}
			else
			{
				db_selectMapRank(client, szSteamId2, arg2);
			}
		}
	}

	return Plugin_Handled;
}

public Action Command_SelectBonusTime(int client, int args)
{
	RateLimit(client);

	if (!g_bRateLimit[client])
	{
		if (args == 0)
		{
			if (g_mapZoneGroupCount > 2)
			{
				CReplyToCommand(client, "%t", "Commands74", g_szChatPrefix);
				return Plugin_Handled;
			}
			else if (g_mapZoneGroupCount == 1)
			{
				CReplyToCommand(client, "%t", "NoBonusOnMap", g_szChatPrefix);
				return Plugin_Handled;
			}

			db_selectBonusRank(client, g_szSteamID[client], g_szMapName, 1);
			return Plugin_Handled;
		}
		else
		{
			char arg1[128];
			char arg2[128];
			GetCmdArg(1, arg1, sizeof(arg1));
			GetCmdArg(2, arg2, sizeof(arg2));

			// bool bPlayerFound = false;
			char szSteamId2[32];
			char szName[MAX_NAME_LENGTH];

			if (StrContains(arg1, "#", false) != -1) // bonus number
			{
				ReplaceString(arg1, 128, "#", "", false);
				int bonus = StringToInt(arg1);

				if (!arg2[0]) // no mapname or player name
					db_selectBonusRank(client, g_szSteamID[client], g_szMapName, bonus);
				else
				{
					if (StrContains(arg2, "surf_", false) != -1) // sm_brank #x surf_y
						db_selectBonusRank(client, g_szSteamID[client], arg2, bonus);
					else // sm_brank #x player
					{
						for (int i = 1; i <= MaxClients; i++)
						{
							if (IsValidClient(i))
							{
								GetClientName(i, szName, MAX_NAME_LENGTH);
								StringToUpper(szName);
								StringToUpper(arg2);
								if ((StrContains(szName, arg2) != -1))
								{
									// bPlayerFound = true;
									GetClientAuthId(i, AuthId_Steam2, szSteamId2, MAX_NAME_LENGTH, true);
									break;
								}
							}
						}
						db_selectBonusRank(client, szSteamId2, g_szMapName, bonus);
					}
				}

				return Plugin_Handled;
			}
			else // sm_brank player else it will contain a clients name
			{
				if (g_mapZoneGroupCount > 2)
				{
					CReplyToCommand(client, "%t", "Commands76", g_szChatPrefix);
					return Plugin_Handled;
				}
				else if (g_mapZoneGroupCount == 1)
				{
					CReplyToCommand(client, "%t", "NoBonusOnMap", g_szChatPrefix);
					return Plugin_Handled;
				}

				for (int i = 1; i <= MaxClients; i++)
				{
					if (IsValidClient(i))
					{
						GetClientName(i, szName, MAX_NAME_LENGTH);
						StringToUpper(szName);
						StringToUpper(arg1);
						if ((StrContains(szName, arg1) != -1))
						{
							// bPlayerFound = true;
							GetClientAuthId(i, AuthId_Steam2, szSteamId2, MAX_NAME_LENGTH, true);
							break;
						}
					}
				}
			}
			db_selectBonusRank(client, szSteamId2, g_szMapName, 1);
		}
	}

	return Plugin_Handled;
}

// Show Triggers https://forums.alliedmods.net/showthread.php?t=290356
public Action Command_ToggleTriggers(int client, int args)
{
	if (!IsPlayerVip(client, _, true))
		return Plugin_Handled;

	g_bShowTriggers[client] = !g_bShowTriggers[client];

	if (g_bShowTriggers[client]) 
		++g_iTriggerTransmitCount;
	else 
		--g_iTriggerTransmitCount;

	CPrintToChat(client, "%t", "Commands47", g_szChatPrefix);

	TransmitTriggers(g_iTriggerTransmitCount > 0);
	return Plugin_Handled;
}

void TransmitTriggers(bool transmit)
{
	// Hook only once
	static bool s_bHooked = false;

	// Have we done this before?
	if (s_bHooked == transmit)
		return;

	// Loop through entities
	char sBuffer[8];
	int lastEdictInUse = GetEntityCount();
	for (int entity = MaxClients + 1; entity <= lastEdictInUse; ++entity)
	{
		if (!IsValidEdict(entity))
			continue;

		// Is this entity a trigger?
		GetEdictClassname(entity, sBuffer, sizeof(sBuffer));
		if (strcmp(sBuffer, "trigger") != 0)
			continue;

		// Is this entity's model a VBSP model?
		GetEntPropString(entity, Prop_Data, "m_ModelName", sBuffer, 2);
		if (sBuffer[0] != '*') 
		{
			// The entity must have been created by a plugin and assigned some random model.
			// Skipping in order to avoid console spam.
			continue;
		}

		// Get flags
		int effectFlags = GetEntData(entity, g_Offset_m_fEffects);
		int edictFlags = GetEdictFlags(entity);

		// Determine whether to transmit or not
		if (transmit) 
		{
			effectFlags &= ~EF_NODRAW;
			edictFlags &= ~FL_EDICT_DONTSEND;
		} 
		else 
		{
			effectFlags |= EF_NODRAW;
			edictFlags |= FL_EDICT_DONTSEND;
		}

		// Apply state changes
		SetEntData(entity, g_Offset_m_fEffects, effectFlags);
		ChangeEdictState(entity, g_Offset_m_fEffects);
		SetEdictFlags(entity, edictFlags);

		// Should we hook?
		if (transmit)
			SDKHook(entity, SDKHook_SetTransmit, Hook_SetTriggerTransmit);
		else
			SDKUnhook(entity, SDKHook_SetTransmit, Hook_SetTriggerTransmit);
	}
	s_bHooked = transmit;
}

public Action Command_ToggleMapFinish(int client, int args)
{
	if (!g_bToggleMapFinish[client])
	{
		g_bToggleMapFinish[client] = true;
		CPrintToChat(client, "%t", "Commands48", g_szChatPrefix);
	}
	else
	{
		g_bToggleMapFinish[client] = false;
		CPrintToChat(client, "%t", "Commands49", g_szChatPrefix);
	}

	return Plugin_Handled;
}

public Action Command_Repeat(int client, int args)
{
	if (!g_bRepeat[client])
	{
		g_bRepeat[client] = true;
		CPrintToChat(client, "%t", "Commands50", g_szChatPrefix);
	}
	else
	{
		g_bRepeat[client] = false;
		CPrintToChat(client, "%t", "Commands51", g_szChatPrefix);
	}

	return Plugin_Handled;
}

public Action Admin_FixBot(int client, int args)
{
	CReplyToCommand(client, "%t", "Commands52", g_szChatPrefix);
	CreateTimer(5.0, FixBot_Off, _, TIMER_FLAG_NO_MAPCHANGE);
	CreateTimer(10.0, FixBot_On, _, TIMER_FLAG_NO_MAPCHANGE);

	return Plugin_Handled;
}

public Action Command_GiveKnife(int client, int args)
{
	if (IsPlayerAlive(client))
	{
		GivePlayerItem(client, "weapon_knife");
	}

	return Plugin_Handled;
}

public Action Command_NoclipSpeed(int client, int args)
{
	if (args == 0)
	{
		CPrintToChat(client, "%t", "Commands54", g_szChatPrefix);
		return Plugin_Handled;
	}
	else
	{
		char arg[16];
		GetCmdArg(1, arg, sizeof(arg));
		
		sv_noclipspeed.ReplicateToClient(client, arg);
		
		float speed = StringToFloat(arg);
		g_iNoclipSpeed[client] = speed;
		
		CReplyToCommand(client, "%s sv_noclipspeed set to %f", g_szChatPrefix, speed);
	}

	return Plugin_Handled;
}

public Action Command_SelectRank(int client, int args)
{
	RateLimit(client);

	if (!g_bRateLimit[client])
	{
		if (args == 0) // Self Rank
		{
			db_selectPlayerRank(client, 0, g_szSteamID[client]);
		}
		else
		{
			char arg1[128];
			GetCmdArg(1, arg1, sizeof(arg1));
			if (StrContains(arg1, "@", false) != -1) // Rank Number
			{
				int arg;
				ReplaceString(arg1, 128, "@", "", false);
				arg = StringToInt(arg1);
				db_selectPlayerRank(client, arg, "none");
			}
			else // Player Name
			{
				bool bPlayerFound = false;
				char szName[128];
				for (int i = 1; i <= MaxClients; i++)
				{
					if (IsValidClient(i))
					{
						GetClientName(i, szName, MAX_NAME_LENGTH);
						StringToUpper(szName);
						StringToUpper(arg1);
						if (StrContains(szName, arg1) != -1)
						{
							char szSteamId[32];
							GetClientAuthId(i, AuthId_Steam2, szSteamId, MAX_NAME_LENGTH, true);
							db_selectPlayerRank(i, 0, szSteamId);
							bPlayerFound = true;
							break;
						}
					}
				}
				if (!bPlayerFound)
					db_selectPlayerRankUnknown(client, arg1);
			}
		}
	}

	return Plugin_Handled;
}

public Action Command_MapImprovement(int client, int args)
{
	g_MiType[client] = 0;
	if (args == 0) // Self Rank
		db_selectMapImprovement(client, g_szMapName);
	else
	{
		char arg1[128];
		GetCmdArg(1, arg1, sizeof(arg1));
		db_selectMapImprovement(client, arg1);
	}

	return Plugin_Handled;
}

public Action Command_SpecBot(int client, int args)
{
	if (IsValidClient(client))
	{
		ChangeClientTeam(client, 1);
		SetEntPropEnt(client, Prop_Send, "m_hObserverTarget", g_RecordBot);
		SetEntProp(client, Prop_Send, "m_iObserverMode", 4);
		g_bWrcpTimeractivated[client] = false;
	}

	return Plugin_Handled;
}

public Action Command_SpecBonusBot(int client, int args)
{
	if (IsValidClient(client))
	{
		ChangeClientTeam(client, 1);
		SetEntPropEnt(client, Prop_Send, "m_hObserverTarget", g_BonusBot);
		SetEntProp(client, Prop_Send, "m_iObserverMode", 4);
		g_bWrcpTimeractivated[client] = false;
	}

	return Plugin_Handled;
}

public Action Command_SelectPlayerPr(int client, int args)
{
	if (args == 0)
	{
		g_iPrTarget[client] = client;
		db_viewPlayerPr(client, g_szSteamID[client], g_szMapName);
	}
	else
	{
		char arg1[128];
		char arg1upper[128];
		GetCmdArg(1, arg1, sizeof(arg1));
		char arg2[256];
		char arg2upper[256];
		GetCmdArg(2, arg2, sizeof(arg2));
		char szSteamId2[32];
		char szName[MAX_NAME_LENGTH];
		g_iPrTarget[client] = client;
		if (StrContains(arg1, "surf_")!= -1)
		{
			if (!arg2[0])
				db_viewPlayerPr(client, g_szSteamID[client], arg1);
			else
			{
				bool playerfound = false;

				for (int i = 1; i <= MaxClients; i++)
				{
					if (IsValidClient(i) && !(IsFakeClient(i)))
					{
						GetClientName(i, szName, MAX_NAME_LENGTH);
						StringToUpper(szName);
						Format(arg2upper, 128, "%s", arg2);
						StringToUpper(arg2upper);
						if ((StrContains(szName, arg2upper) != -1))
						{
							g_iPrTarget[client] = i;
							GetClientAuthId(i, AuthId_Steam2, szSteamId2, MAX_NAME_LENGTH, true);
							db_viewPlayerPr(client, szSteamId2, arg1);
							playerfound = true;
							break;
						}
					}
				}

				if (!playerfound)
					CPrintToChat(client, "%t", "Commands55", g_szChatPrefix, arg2, arg1);
			}
		}
		else
		{
			bool playerfound = false;

			for (int i = 1; i <= MaxClients; i++)
			{
				if (IsValidClient(i) && !(IsFakeClient(i)))
				{
					GetClientName(i, szName, MAX_NAME_LENGTH);
					StringToUpper(szName);
					Format(arg1upper, 128, "%s", arg1);
					StringToUpper(arg1upper);
					if ((StrContains(szName, arg1upper) != -1))
					{
						g_iPrTarget[client] = i;
						GetClientAuthId(i, AuthId_Steam2, szSteamId2, MAX_NAME_LENGTH, true);
						db_viewPlayerPr(client, szSteamId2, g_szMapName);
						playerfound = true;
						break;
					}
				}
			}

			if (!playerfound)
				CPrintToChat(client, "%t", "Commands56", g_szChatPrefix, arg1);
		}
	}

	return Plugin_Handled;
}

public Action Command_ShowZones(int client, int args)
{
	g_bShowZones[client] = !g_bShowZones[client];
	if (g_bShowZones[client])
		CReplyToCommand(client, "%t", "Commands78", g_szChatPrefix);
	else
		CReplyToCommand(client, "%t", "Commands79", g_szChatPrefix);

	return Plugin_Handled;
}

public Action Command_HookZones(int client, int args)
{
	HookZonesMenu(client);
	return Plugin_Handled;
}

public void HookZonesMenu(int client)
{
	if (!IsPlayerZoner(client))
	{
		CPrintToChat(client, "%t", "NoZoneAccess", g_szChatPrefix);
		return;
	}

	if (g_hTriggerMultiple == null)
	{
		CPrintToChat(client, "%t", "Commands86", g_szChatPrefix);
		return;
	}

	if (GetArraySize(g_hTriggerMultiple) < 1)
	{
		CPrintToChat(client, "%t", "Commands58", g_szChatPrefix);
		return;
	}

	DisplayMenu(g_mTriggerMultipleMenu, client, MENU_TIME_FOREVER);
}

public int HookZonesMenuHandler(Menu menu, MenuAction action, int param1, int param2)
{
	switch (action)
	{
		case MenuAction_Select:
		{
			g_iSelectedTrigger[param1] = param2;
			char szTriggerName[128];
			GetMenuItem(menu, param2, szTriggerName, sizeof(szTriggerName));

			Menu menu2 = CreateMenu(HookZoneHandler);
			SetMenuTitle(menu2, szTriggerName);

			char szParam[128];
			IntToString(param2, szParam, sizeof(szParam));
			AddMenuItem(menu2, szParam, "传送到区域");
			AddMenuItem(menu2, szParam, "链接到区域");

			SetMenuOptionFlags(menu2, MENUFLAG_BUTTON_EXIT);
			DisplayMenu(menu2, param1, MENU_TIME_FOREVER);
		}
		case MenuAction_Cancel: 
		{
			if (IsValidClient(param1))
				g_iSelectedTrigger[param1] = -1;
		}
	}

	return 0;
}

public int HookZoneHandler(Menu menu, MenuAction action, int param1, int param2)
{
	switch (action)
	{
		case MenuAction_Select:
		{
			char szTriggerIndex[128];
			GetMenuItem(menu, param2, szTriggerIndex, sizeof(szTriggerIndex));
			int index = StringToInt(szTriggerIndex);
			g_iSelectedTrigger[param1] = index;
			switch (param2)
			{
				case 0: // teleport
				{
					int iEnt = GetArrayCell(g_hTriggerMultiple, index);
					float position[3];
					float angles[3];
					GetEntPropVector(iEnt, Prop_Send, "m_vecOrigin", position);
					GetClientEyeAngles(param1, angles);
					char szTriggerName[128];
					GetEntPropString(iEnt, Prop_Send, "m_iName", szTriggerName, 128, 0);

					CPrintToChat(param1, "%t", "TeleportingTo", g_szChatPrefix, szTriggerName, position[0], position[1], position[2]);

					Client_Stop(param1, 0);
					TeleportEntity(param1, position, angles, view_as<float>( { 0.0, 0.0, -100.0 } ));
				}
				case 1: // hook zone
				{
					int iEnt = GetArrayCell(g_hTriggerMultiple, index);

					char szTriggerName[128];
					GetEntPropString(iEnt, Prop_Send, "m_iName", szTriggerName, 128, 0);

					char szTitle[256];
					Format(szTitle, 256, "%s是地图还是奖励区域？", szTriggerName);

					Menu menu2 = CreateMenu(HookZoneGroupHandler);
					SetMenuTitle(menu2, szTitle);
					AddMenuItem(menu2, szTriggerIndex, "地图");
					AddMenuItem(menu2, szTriggerIndex, "奖励nus");
					SetMenuOptionFlags(menu2, MENUFLAG_BUTTON_EXIT);
					DisplayMenu(menu2, param1, MENU_TIME_FOREVER);
				}
			}
		}
		case MenuAction_Cancel: g_iSelectedTrigger[param1] = -1;
		case MenuAction_End:
		{
			if (IsValidClient(param1))
				g_iSelectedTrigger[param1] = -1;
			delete menu;
		}
	}

	return 0;
}

public int HookZoneGroupHandler(Menu menu, MenuAction action, int param1, int param2)
{
	switch (action)
	{
		case MenuAction_Select:
		{
			char szTriggerIndex[128];
			GetMenuItem(menu, param2, szTriggerIndex, sizeof(szTriggerIndex));
			int index = StringToInt(szTriggerIndex);
			g_iSelectedTrigger[param1] = index;

			switch (param2)
			{
				case 0:
				{
					g_iWaitingForResponse[param1] = None;
					g_iZonegroupHook[param1] = 0;
					int iEnt = GetArrayCell(g_hTriggerMultiple, index);

					char szTriggerName[128];
					GetEntPropString(iEnt, Prop_Send, "m_iName", szTriggerName, 128, 0);

					char szTitle[256];
					Format(szTitle, 256, "将%s设置为哪种区域类型？", szTriggerName);

					Menu menu2 = CreateMenu(HookZoneTypeHandler);
					SetMenuTitle(menu2, szTitle);
					AddMenuItem(menu2, szTriggerIndex, "起始区域");
					AddMenuItem(menu2, szTriggerIndex, "检查点区域");
					AddMenuItem(menu2, szTriggerIndex, "关卡区域");
					AddMenuItem(menu2, szTriggerIndex, "结束区域");
					SetMenuOptionFlags(menu2, MENUFLAG_BUTTON_EXIT);
					DisplayMenu(menu2, param1, MENU_TIME_FOREVER);
				}
				case 1:
				{
					g_iWaitingForResponse[param1] = ZoneGroup;
					CPrintToChat(param1, "%t", "Commands60", g_szChatPrefix);

					int iEnt = GetArrayCell(g_hTriggerMultiple, index);

					char szTriggerName[128];
					GetEntPropString(iEnt, Prop_Send, "m_iName", szTriggerName, 128, 0);

					char szTitle[256];
					Format(szTitle, 256, "将 %s 设置为哪种区域类型？", szTriggerName);

					Menu menu2 = CreateMenu(HookZoneTypeHandler);
					SetMenuTitle(menu2, szTitle);
					AddMenuItem(menu2, szTriggerIndex, "起始区域");
					AddMenuItem(menu2, szTriggerIndex, "检查点区域");
					AddMenuItem(menu2, szTriggerIndex, "关卡区域");
					AddMenuItem(menu2, szTriggerIndex, "结束区域");
					SetMenuOptionFlags(menu2, MENUFLAG_BUTTON_EXIT);
					DisplayMenu(menu2, param1, MENU_TIME_FOREVER);
				}
			}
		}
		case MenuAction_Cancel: g_iSelectedTrigger[param1] = -1;
		case MenuAction_End:
		{
			g_iSelectedTrigger[param1] = -1;
			delete menu;
		}
	}

	return 0;
}

public int HookZoneTypeHandler(Menu menu, MenuAction action, int param1, int param2)
{
	switch (action)
	{
		case MenuAction_Select:
		{	
			char szTriggerIndex[128];
			GetMenuItem(menu, param2, szTriggerIndex, sizeof(szTriggerIndex));
			int index = StringToInt(szTriggerIndex);

			int iEnt = GetArrayCell(g_hTriggerMultiple, index);
			char szTriggerName[128];
			GetEntPropString(iEnt, Prop_Send, "m_iName", szTriggerName, 128, 0);


			if (g_iWaitingForResponse[param1] == ZoneGroup)
			{
				CPrintToChat(param1, "%t", "Commands61", g_szChatPrefix);

				char szTitle[256];
				Format(szTitle, 256, "将 %s 设置为什么类型的区域？", szTriggerName);

				Menu menu2 = CreateMenu(HookZoneTypeHandler);
				SetMenuTitle(menu2, szTitle);
				AddMenuItem(menu2, szTriggerIndex, "起始区域");
				AddMenuItem(menu2, szTriggerIndex, "检查点区域");
				AddMenuItem(menu2, szTriggerIndex, "关卡区域");
				AddMenuItem(menu2, szTriggerIndex, "结束区域");
				SetMenuOptionFlags(menu2, MENUFLAG_BUTTON_EXIT);
				DisplayMenu(menu2, param1, MENU_TIME_FOREVER);
				return 0;
			}

			float position[3], fMins[3], fMaxs[3];
			GetEntPropVector(iEnt, Prop_Send, "m_vecOrigin", position);
			GetEntPropVector(iEnt, Prop_Send, "m_vecMins", fMins);
			GetEntPropVector(iEnt, Prop_Send, "m_vecMaxs", fMaxs);

			for (int j = 0; j < 3; j++)
			{
				fMins[j] = (fMins[j] + position[j]);
			}

			for (int j = 0; j < 3; j++)
			{
				fMaxs[j] = (fMaxs[j] + position[j]);
			}

			switch (param2)
			{
				case 0: // Start Zone
				{
					db_insertZoneHook(g_mapZonesCount, 1, g_mapZonesTypeCount[0][1], 0, 0, g_iZonegroupHook[param1], szTriggerName, fMins, fMaxs);
				}
				case 1: // Checkpoint Zone
				{
					db_insertZoneHook(g_mapZonesCount, 4, g_mapZonesTypeCount[0][4], 0, 0, g_iZonegroupHook[param1], szTriggerName, fMins, fMaxs);
				}
				case 2: // Stage Zone
				{
					db_insertZoneHook(g_mapZonesCount, 3, g_mapZonesTypeCount[0][3], 0, 0, g_iZonegroupHook[param1], szTriggerName, fMins, fMaxs);
				}
				case 3: // End Zone
				{
					db_insertZoneHook(g_mapZonesCount, 2, g_mapZonesTypeCount[0][2], 0, 0, g_iZonegroupHook[param1], szTriggerName, fMins, fMaxs);
				}
			}
		}
		case MenuAction_Cancel: g_iSelectedTrigger[param1] = -1;
		case MenuAction_End:
		{
			g_iSelectedTrigger[param1] = -1;
			delete menu;
		}
	}

	return 0;
}

// Startpos Goose
public Action Command_Startpos(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	if (g_bTimerEnabled[client] && !g_bPracticeMode[client])
		Startpos(client);
	else 
		CReplyToCommand(client, "%t", "Commands82", g_szChatPrefix);

	return Plugin_Handled;
}

public Action Command_ResetStartpos(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	if(g_iClientInZone[client][0] == 3){
		if(g_bStageStartposUsed[client][g_iClientInZone[client][1]])
			g_bStageStartposUsed[client][g_iClientInZone[client][1]] = false;
	}
	else
		g_bStartposUsed[client][g_iClientInZone[client][2]] = false;

	CReplyToCommand(client, "%t", "Commands83", g_szChatPrefix);

	return Plugin_Handled;
}

public void Startpos(int client)
{

	if (IsPlayerAlive(client) && g_bInStartZone[client] && GetEntityFlags(client) & FL_ONGROUND)//MAP START
	{
		GetClientAbsOrigin(client, g_fStartposLocation[client][g_iClientInZone[client][2]]);
		GetClientEyeAngles(client, g_fStartposAngle[client][g_iClientInZone[client][2]]);
		g_bStartposUsed[client][g_iClientInZone[client][2]] = true;
		CPrintToChat(client, "%t", "Commands68", g_szChatPrefix);
	}
	else if(IsPlayerAlive(client) && g_bInStageZone[client] && GetEntityFlags(client) & FL_ONGROUND)//STAGE START
	{
		GetClientAbsOrigin(client, g_fStageStartposLocation[client][g_Stage[0][client]-2]);
		GetClientEyeAngles(client, g_fStageStartposAngle[client][g_Stage[0][client]-2]);
		g_bStageStartposUsed[client][g_iClientInZone[client][1]] = true;
		CPrintToChat(client, "%t", "Commands89", g_szChatPrefix);
	}
	else
	{
		CPrintToChat(client, "%t", "Commands69", g_szChatPrefix);
	}
}

public Action Command_CPR(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	// Display client vs rank 1 if client has completion
	if (args == 0)
	{
		if (g_fPersonalRecord[client] > 0.0)
		{
			db_selectCPR(client, g_MapRank[client], g_szMapName, 1, 1);
		}
		else
		{
			CReplyToCommand(client, "%t", "Commands90", g_szChatPrefix);
		}
		return Plugin_Handled;
	}
	char arg[128];
	int rank1, rank2;
	bool rank1_name = false;
	bool rank2_name = false;
	
	// Get the first rank to compare -> rank1
	GetCmdArg(1, arg, sizeof(arg));
	if (StrContains(arg, "@") != -1)
	{
		ReplaceString(arg, sizeof(arg), "@", "");
		rank1 = StringToInt(arg);
	}
	else if(arg[0]) // Look for in-game player with argument for comparing with -> rank1
	{
		// CReplyToCommand(client, "arg = %s", arg);
		StringToUpper(arg);
		char szPlayerName[MAX_NAME_LENGTH];
		bool found = false;
		for (int i = 1; i <= MaxClients; i++)
		{
			if (IsValidClient(i) && !IsClientSourceTV(i))
			{
				GetClientName(i, szPlayerName, sizeof(szPlayerName));
				StringToUpper(szPlayerName);
				
				if ((StrContains(szPlayerName, arg) != -1))
				{
					found = true;
					rank1_name = true;
					rank1 = g_MapRank[i];
					break;
				}
			}
		}
		if (!found)
		{
			CReplyToCommand(client, "%t", "Commands85", g_szChatPrefix);
			return Plugin_Handled;
		}
	}
	else return Plugin_Handled;

	if (args == 1) 
	{
		if (g_fPersonalRecord[client] > 0.0) // compare client rank with argument supplied
		{
			db_selectCPR(client, g_MapRank[client], g_szMapName, rank1, 1);
		}
		else // compare client argument (rank1) with record for current map
		{
			db_selectCPR(client, rank1, g_szMapName, 1, 1);
		}
	}

	// Get the second rank to compare -> rank2
	GetCmdArg(2, arg, sizeof(arg));
	if (StrContains(arg, "@") != -1)
	{
		ReplaceString(arg, sizeof(arg), "@", "");
		rank2 = StringToInt(arg);
	}
	else if(arg[0]) // Look for in-game player with argument for comparing with -> rank2
	{
		// CReplyToCommand(client, "arg = %s", arg);
		StringToUpper(arg);
		char szPlayerName[MAX_NAME_LENGTH];
		bool found = false;
		for (int i = 1; i <= MaxClients; i++)
		{
			if (IsValidClient(i) && !IsClientSourceTV(i))
			{
				GetClientName(i, szPlayerName, sizeof(szPlayerName));
				StringToUpper(szPlayerName);
				
				if ((StrContains(szPlayerName, arg) != -1))
				{
					found = true;
					rank2_name = true;
					rank2 = g_MapRank[i];
					break;
				}
			}
		}
		if (!found)
		{
			CReplyToCommand(client, "%t", "Commands85", g_szChatPrefix);
			return Plugin_Handled;
		}
	}
	else return Plugin_Handled;
	
	// If comparing 2 in-game players we only compare current map
	if (!rank1_name && !rank2_name)
	{
		// Use current map or client asked for a specific one
		GetCmdArg(3, arg, sizeof(arg));
		if (arg[0])
			db_selectCPR(client, rank1, arg, rank2, 0);
		else	
			db_selectCPR(client, rank1, g_szMapName, rank2, 1);
	}
	else
	{
		db_selectCPR(client, rank1, g_szMapName, rank2, 1);
	}
	return Plugin_Handled;
}

public Action Command_PRinfo(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	switch(args){
		//WORKS
		//prinfo (in map zone) || (in bonus zone)
		case 0:{
			if(g_iClientInZone[client][2] == 0)
				db_selectPRinfoUnknown(client, g_MapRank[client], 0, g_szSteamID[client]);
			else
				db_selectPRinfoUnknown(client, g_MapRankBonus[g_iClientInZone[client][2]][client], g_iClientInZone[client][2], g_szSteamID[client]);
		}
		//WORKS
		//prinfo <mapname>
		//prinfo <rank>
		//prinfo <bonus number>
		case 1:{
			char arg1[128];
			GetCmdArg(1, arg1, sizeof(arg1));

			if (StrContains(arg1, "surf_", true) != -1)
			{
				db_viewPRinfoMapRank(client, g_szSteamID[client], arg1);
			}
			else if (arg1[0] == '@')
			{
				ReplaceString(arg1, sizeof(arg1), "@", "");
				int rank = StringToInt(arg1);

				//db_selectPRinfoUnknownWithMap(client, rank, g_szMapName, 0);

				if(g_iClientInZone[client][2] == 0)
					db_GetRankSteamID(client, g_szMapName, rank, 0);
				else
					db_GetRankSteamID(client, g_szMapName , rank, g_iClientInZone[client][2]);

			}
			else if (arg1[0] == 'b')
			{
				ReplaceString(arg1, sizeof(arg1), "b", "");
				int bonus_number = StringToInt(arg1);

				if (0 < bonus_number < MAXZONEGROUPS)
					db_selectPRinfoUnknown(client, g_MapRankBonus[bonus_number][client], bonus_number, g_szSteamID[client]);
				else
					CPrintToChat(client, "%t", "InvalidBonusID", g_szChatPrefix, bonus_number);
			}
		}
		//WORKS
		
		case 2:{
			char arg1[128];
			char arg2[128];
			GetCmdArg(1, arg1, sizeof(arg1));
			GetCmdArg(2, arg2, sizeof(arg2));

			if (StrContains(arg1, "surf_", true) != -1)
			{	
				if (StrContains(arg2, "@") != -1){
					ReplaceString(arg2, sizeof(arg2), "@", "");
					int rank = StringToInt(arg2);
					db_GetRankSteamID(client, arg1, rank, 0);
					//db_selectPRinfoUnknownWithMap(client, rank, arg1, 0);
				}
				else if(arg2[0] == 'b'){
					ReplaceString(arg2, sizeof(arg2), "b", "");
					int bonus_number = StringToInt(arg2);

					if (0 < bonus_number < MAXZONEGROUPS)
						db_viewPRinfoMapRankBonus(client, g_szSteamID[client], arg1, bonus_number);
					else
						CPrintToChat(client, "%t", "InvalidBonusID", g_szChatPrefix, bonus_number);
				}
			}
			else if (arg1[0] == '@')
			{
				if (StrContains(arg2, "surf_") != -1){
					ReplaceString(arg1, sizeof(arg1), "@", "");
					int rank = StringToInt(arg1);

					//db_selectPRinfoUnknownWithMap(client, rank, arg2, 0);
					db_GetRankSteamID(client, arg2, rank, 0);
				}
				else if(StrContains(arg2, "b") != -1){
					ReplaceString(arg1, sizeof(arg1), "@", "");
					int rank = StringToInt(arg1);

					ReplaceString(arg2, sizeof(arg2), "b", "");
					int bonus_number = StringToInt(arg2);

					if (0 < bonus_number < MAXZONEGROUPS)
						db_GetRankSteamID(client, g_szMapName, rank, bonus_number);
						//db_selectPRinfoUnknown(client, rank, bonus_number);
					else
						CPrintToChat(client, "%t", "InvalidBonusID", g_szChatPrefix, bonus_number);

				}
			}
			else if (arg1[0] == 'b')
			{	
				if (StrContains(arg2, "surf_") != -1){
					ReplaceString(arg1, sizeof(arg1), "b", "");
					int bonus_number = StringToInt(arg1);

					if (0 < bonus_number < MAXZONEGROUPS)
						db_viewPRinfoMapRankBonus(client, g_szSteamID[client], arg2, bonus_number);
					else
						CPrintToChat(client, "%t", "InvalidBonusID", g_szChatPrefix, bonus_number);
				}
				else if(StrContains(arg2, "@") != -1){
					ReplaceString(arg1, sizeof(arg1), "b", "");
					int bonus_number = StringToInt(arg1);

					ReplaceString(arg2, sizeof(arg2), "@", "");
					int rank = StringToInt(arg2);

					if (0 < bonus_number < MAXZONEGROUPS)
						db_GetRankSteamID(client, g_szMapName, rank, bonus_number);
						//db_selectPRinfoUnknown(client, rank, bonus_number);
					else
						CPrintToChat(client, "%t", "InvalidBonusID", g_szChatPrefix, bonus_number);
				}
			}
		}
		//WORKS
		//prinfo <mapname> <bonus number> <rank>
		case 3:{
			char arg1[128];
			char arg2[128];
			char arg3[128];

			GetCmdArg(1, arg1, sizeof(arg1));
			GetCmdArg(2, arg2, sizeof(arg2));
			GetCmdArg(3, arg3, sizeof(arg3));

			if( (StrContains(arg1, "surf_") != -1) && (arg2[0] == 'b') && (arg3[0] == '@')){

				ReplaceString(arg2, sizeof(arg2), "b", "");
				int bonus_number = StringToInt(arg2);

				ReplaceString(arg3, sizeof(arg3), "@", "");
				int rank = StringToInt(arg3);

				if (0 < bonus_number < MAXZONEGROUPS)
					db_GetRankSteamID(client, arg1, rank, bonus_number-1);
					//db_selectPRinfoUnknownWithMap(client, rank, arg1, bonus_number);
				else
					CPrintToChat(client, "%t", "InvalidBonusID", g_szChatPrefix, bonus_number);

			}
			else{
				CPrintToChat(client, "%t", "BonusPRinfoUsage", g_szChatPrefix);
			}
		}
		default:{
			CPrintToChat(client, "DEFAULT");
			db_selectPRinfoUnknownWithMap(client, g_MapRank[client], g_szMapName, 0, g_szSteamID[client]);
			}
		}

	return Plugin_Handled;
}

public Action Command_CCP(int client, int args)
{

	if (!IsValidClient(client))
		return Plugin_Handled;

	switch(args){
		case 0:{
			if(g_bhasStages)
				db_viewCCP_GetMapRank(client, g_szSteamID[client], g_szMapName);
			else
				CPrintToChat(client, "%t", "CCP_01", g_szChatPrefix);
		}
		//TODO CCP FOR OTHERMAPS AND RANKS
		case 1:{
			char arg1[32];
			GetCmdArg(1, arg1, sizeof(arg1));

			if (StrContains(arg1, "surf_", true) != -1)
			{	
				isLinear(client, g_szSteamID[client], arg1);
			}
			else if (StrContains(arg1, "@") != -1)
			{
				ReplaceString(arg1, 32, "@", "");
				int rank = StringToInt(arg1);

				if(g_bhasStages)
					db_viewCCP_WithMapRank(client, g_szSteamID[client], g_szMapName, rank);
				else
					CPrintToChat(client, "%t", "CCP_01", g_szChatPrefix);

			}
		}
	}

	return Plugin_Handled;
}

public Action Command_ReloadMap(int client, int args)
{
	ServerCommand("changelevel %s", g_szMapName);
	return Plugin_Handled;
}

public Action Command_PlayRecord(int client, int args)
{
	if (GetConVarBool(g_hPlayReplayVipOnly))
	{
		if (!IsPlayerVip(client, _, true))
			return Plugin_Handled;
	}

	PlayRecordMenu(client);
	return Plugin_Handled;
}

public void PlayRecordMenu(int client)
{
	Menu menu = CreateMenu(PlayRecordTypeMenuHandler);
	SetMenuTitle(menu, "回放记录: 选择一个类型");

	// Check for map replay
	if (g_bMapReplay[0])
		AddMenuItem(menu, "", "地图回放");
	else
		AddMenuItem(menu, "", "地图回放", ITEMDRAW_DISABLED);

	// Check for bonus replay
	for (int i = 1; i < MAXZONEGROUPS; i++)
	{
		if (g_bMapBonusReplay[i][0])
		{
			AddMenuItem(menu, "", "奖励回放");
			break;
		}

		if (i == MAXZONEGROUPS - 1)
			AddMenuItem(menu, "", "奖励回放", ITEMDRAW_DISABLED);
	}

	// Check for stage replay
	if (g_TotalStages > 0)
	{
		for (int i = 1; i <= g_TotalStages; i++)
		{
			if (g_bStageReplay[i])
			{
				AddMenuItem(menu, "", "关卡回放");
				break;
			}
			
			if (i == g_TotalStages)
				AddMenuItem(menu, "", "关卡回放", ITEMDRAW_DISABLED);
		}
	}
	else
		AddMenuItem(menu, "", "关卡回放", ITEMDRAW_DISABLED);

	SetMenuExitButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int PlayRecordTypeMenuHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		if (g_bManualReplayPlayback && g_bManualBonusReplayPlayback)
		{
			switch (param2)
			{
				case 1: CPrintToChat(param1, "%t", "BotInUse", g_szChatPrefix, "奖励");
				case 2: CPrintToChat(param1, "%t", "BotInUse", g_szChatPrefix, "关卡");
				default: CPrintToChat(param1, "%t", "BotInUse", g_szChatPrefix, "地图");
			}
		}
		else
			ChooseReplayMenu(param1, param2);
	}
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public void ChooseReplayMenu(int client, int type)
{
	Menu menu = CreateMenu(PlayRecordMenuHandler);
	char szTitle[128], szItem[128], szBuffer[128];
	if (type == 0)
	{
		Format(szTitle, sizeof(szTitle), "回放记录: 地图回放");
		AddMenuItem(menu, "map", "地图回放");
 		for (int i = 1; i < MAX_STYLES; i++)
		{
			if (g_bMapReplay[i])
			{
				Format(szItem, sizeof(szItem), "地图 - %s", g_szStyleMenuPrint[i]);
				Format(szBuffer, sizeof(szBuffer), "map-style-%d", i);
				AddMenuItem(menu, szBuffer, szItem);
			}
		}
	}
	else if (type == 1)
	{
		Format(szTitle, sizeof(szTitle), "回放记录: 奖励回放");
		for (int i = 1; i < g_mapZoneGroupCount; i++)
		{
			if (g_bMapBonusReplay[i][0])
			{
				Format(szItem, sizeof(szItem), "奖励 %d", i);
				Format(szBuffer, sizeof(szBuffer), "bonus-%d", i);
				AddMenuItem(menu, szBuffer, szItem);
			}
		}

		for (int i = 1; i < g_mapZoneGroupCount; i++)
		{
			for (int j = 1; j < MAX_STYLES; j++)
			{
				if (g_bMapBonusReplay[i][j])
				{
					Format(szItem, sizeof(szItem), "奖励 %d - %s", i, g_szStyleMenuPrint[j]);
					Format(szBuffer, sizeof(szBuffer), "bonus-%d-style-%d", i, j);
					AddMenuItem(menu, szBuffer, szItem);
				}
			}
		}
	}
	else if (type == 2)
	{
		Format(szTitle, sizeof(szTitle), "回放记录: 关卡回放");
		for (int i = 1; i <= g_TotalStages; i++)
		{
			if (g_bStageReplay[i])
			{
				Format(szItem, sizeof(szItem), "关卡 %d 回放", i);
				Format(szBuffer, sizeof(szBuffer), "stage-%d", i);
				AddMenuItem(menu, szBuffer, szItem);
			}
		}
	}

	SetMenuTitle(menu, szTitle);
	SetMenuExitBackButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int PlayRecordMenuHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char szBuffer[128];
		GetMenuItem(menu, param2, szBuffer, sizeof(szBuffer));

		int bot;
		bool bSpec = true;
		// Did the client select a map replay?
		if ((StrContains(szBuffer, "map", false)) != -1)
		{	
			bSpec = false;
			g_iSelectedReplayType = 0;
			PlayRecordCPMenu(param1, szBuffer);
		}
		else if ((StrContains(szBuffer, "bonus", false)) != -1)
		{
			if (g_bManualBonusReplayPlayback)
			{
				bSpec = false;
				CPrintToChat(param1, "%t", "BotInUse", g_szChatPrefix, "Bonus");
			}
			else
			{
				g_iSelectedReplayType = 1;
				bot = g_BonusBot;
				int bonus;

				// Check which bonus
				char szBuffer2[2][128];
				ExplodeString(szBuffer, "bonus-", szBuffer2, 2, sizeof(szBuffer2));
				bonus = StringToInt(szBuffer2[1]);
				// Check for style replay
				if ((StrContains(szBuffer, "style", false)) != -1)
				{
					g_iManualBonusReplayCount = 0;
					g_bManualBonusReplayPlayback = true;
					ExplodeString(szBuffer, "style-", szBuffer2, 2, 128);
					int style = StringToInt(szBuffer2[1]);
					g_iSelectedBonusReplayStyle = style;
					g_iCurrentBonusReplayIndex = 99;
					g_iManualBonusToReplay = bonus;
					PlayRecord(bot, bonus, style, 0);
				}
				else
				{
					g_bManualBonusReplayPlayback = true;
					g_iManualBonusReplayCount = 99;
					g_iSelectedBonusReplayStyle = 0;
					g_iCurrentBonusReplayIndex = 99;
					g_iManualBonusToReplay = bonus;
					PlayRecord(bot, bonus, 0, 0);
				}
			}
		}
		else if ((StrContains(szBuffer, "stage", false)) != -1)
		{
			if (g_bManualStageReplayPlayback)
			{
				bSpec = false;
				CPrintToChat(param1, "%t", "BotInUse", g_szChatPrefix, "Stage");
			}
			else
			{
				g_iSelectedReplayType = 2;
				bot = g_WrcpBot;
				int stage;

				// Check which stage
				char szBuffer2[2][128];
				ExplodeString(szBuffer, "stage-", szBuffer2, 2, 128);
				stage = StringToInt(szBuffer2[1]);

				g_bManualStageReplayPlayback = true;
				g_iManualStageReplayCount = 0;
				g_iSelectedReplayStage = stage;
				PlayRecord(bot, -stage, 0, 0);
			}
		}
		if (bSpec)
		{
			// Delay the switch to spec so the client sees the new bot name
			Handle pack;
			CreateDataTimer(0.2, SpecBot, pack);
			WritePackCell(pack, GetClientUserId(param1));
			WritePackCell(pack, bot);
		}
	}
	else if (action == MenuAction_Cancel)
		PlayRecordMenu(param1);
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public void PlayRecordCPMenu(int client, char szBuffer[128])
{	
	Menu menu_replay_cp = CreateMenu(PlayRecordCPMenuHandler);
	char szTitle[128], szItem[128], szBuffer_menu[128];
	Format(szTitle, sizeof(szTitle), "回放记录: 地图回放");

	int cp_count;
	if(!g_bhasStages)
		cp_count = g_iTotalCheckpoints;
	else
		cp_count = g_TotalStages - 1;

	//check for style replay
	if ((StrContains(szBuffer, "style", false)) == -1)
		for(int i = 0; i <= cp_count; i++)
		{
			if(i == 0){
				Format(szItem, sizeof(szItem), "地图起点");
				Format(szBuffer_menu, sizeof(szBuffer_menu), "mapstart");
				AddMenuItem(menu_replay_cp, szBuffer_menu, szItem);
			}
			else{
				if (g_bReplayTickFound[0]) {
					if(!g_bhasStages)
						Format(szItem, sizeof(szItem), "检查点 %d ", i);
					else
						Format(szItem, sizeof(szItem), "关卡 %d ", i + 1);
					Format(szBuffer_menu, sizeof(szBuffer_menu), "checkpoint-%d", i);
					AddMenuItem(menu_replay_cp, szBuffer_menu, szItem);
				}
			}
		}
	else{
		char szBuffer2[2][128];
		ExplodeString(szBuffer, "style-", szBuffer2, 2, sizeof(szBuffer2));
		int style = StringToInt(szBuffer2[1]);
		g_iSelectedReplayStyle = style;

		//PrintToChatAll("style %d", style);

		for (int i = 0; i <= cp_count; i++)
			if (g_bMapReplay[style]){
				if(i == 0){
					Format(szItem, sizeof(szItem), "%s | 地图起点", g_szStyleMenuPrint[style]);
					Format(szBuffer_menu, sizeof(szBuffer_menu), "style-%i-mapstart", style);
					AddMenuItem(menu_replay_cp, szBuffer_menu, szItem);
				}
				else{
					if (g_bReplayTickFound[g_iSelectedReplayStyle]){
						if(!g_bhasStages)
							Format(szItem, sizeof(szItem), "%s | 检查点 %d ", g_szStyleMenuPrint[style], i);
						else
							Format(szItem, sizeof(szItem), "%s | 关卡 %d ", g_szStyleMenuPrint[style], i + 1);
						Format(szBuffer_menu, sizeof(szBuffer_menu), "style-%i-checkpoint-%d", style, i);
						AddMenuItem(menu_replay_cp, szBuffer_menu, szItem);
					}
				}
			}

	}

	SetMenuTitle(menu_replay_cp, szTitle);
	SetMenuExitBackButton(menu_replay_cp, true);
	DisplayMenu(menu_replay_cp, client, MENU_TIME_FOREVER);
}

public int PlayRecordCPMenuHandler(Handle menu, MenuAction action, int param1, int param2)
{
	if (action == MenuAction_Select)
	{
		char szBuffer[128];
		GetMenuItem(menu, param2, szBuffer, sizeof(szBuffer));

		char szBuffer_CP_split[4][128];
		
		int selected_CP;
		int style;
		if ((StrContains(szBuffer, "style", false)) != -1){
			
			if((StrContains(szBuffer, "checkpoint", false)) != -1){
				ExplodeString(szBuffer, "-", szBuffer_CP_split, 4, 128);
				selected_CP = StringToInt(szBuffer_CP_split[3]);
				style = StringToInt(szBuffer_CP_split[1]);
			}
			else{
				ExplodeString(szBuffer, "-", szBuffer_CP_split, 3, 128);
				selected_CP = 0;
				style = StringToInt(szBuffer_CP_split[1]);
			}
		}
		else{
			ExplodeString(szBuffer, "-", szBuffer_CP_split, 2, 128);
			selected_CP = StringToInt(szBuffer_CP_split[1]);
		}

		//PrintToChatAll("SELECTED CP NUMBER %d", selected_CP);

		int bot;
		g_iSelectedReplayType = 0;
		bot = g_RecordBot;
		bool bSpec = true;
		if (g_bManualReplayPlayback)
		{
			bSpec = false;
			CPrintToChat(param1, "%t", "BotInUse", g_szChatPrefix, "Map");
		}
		else{

			// Check for style replay
			if ((StrContains(szBuffer, "style", false)) != -1)
			{
				g_iManualReplayCount = 0;
				g_bManualReplayPlayback = true;
				g_iSelectedReplayStyle = style;
				//PrintToChatAll("style value %d", style);
				PlayRecord(bot, 0, style, selected_CP);
			}
			else
			{
				g_bManualReplayPlayback = true;
				g_iManualReplayCount = 99;
				g_iSelectedReplayStyle = 0;
				PlayRecord(bot, 0, 0, selected_CP);
			}
		}
		if(bSpec){
			Handle pack;
			CreateDataTimer(0.2, SpecBot, pack);
			WritePackCell(pack, GetClientUserId(param1));
			WritePackCell(pack, bot);
		}
	}
	else if (action == MenuAction_Cancel)
		PlayRecordMenu(param1);
	else if (action == MenuAction_End)
		delete menu;

	return 0;
}

public Action Command_previousSaveloc(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;
		
	if (g_iSaveLocCount[client] < 1)
	{
		CPrintToChat(client, "%t", "Commands11", g_szChatPrefix);
		return Plugin_Handled;
	}

	int desiredSavelocID = g_iLastSaveLocIdClient[client] - 1;
	if (desiredSavelocID <= 0)
	{
		CPrintToChat(client, "%t", "Commands16", g_szChatPrefix);
		return Plugin_Handled;
	}
	
	CPrintToChat(client, "%t", "Commands13", g_szChatPrefix, desiredSavelocID);
	TeleportToSaveloc(client, desiredSavelocID);

	return Plugin_Handled;
}

public Action Command_nextSaveloc(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	if (g_iSaveLocCount[client] < 1)
	{
		CPrintToChat(client, "%t", "Commands11", g_szChatPrefix);
		return Plugin_Handled;
	}

	int desiredSavelocID = g_iLastSaveLocIdClient[client] + 1;
	if (desiredSavelocID > g_iSaveLocCount[client])
	{
		CPrintToChat(client, "%t", "Commands15", g_szChatPrefix);
		return Plugin_Handled;
	}
	
	CPrintToChat(client, "%t", "Commands13", g_szChatPrefix, desiredSavelocID);
	TeleportToSaveloc(client, desiredSavelocID);

	return Plugin_Handled;
}

public Action Command_NextRank(int client, int args)
{
	if (!IsValidClient(client))
		return Plugin_Handled;

	db_ViewPlayerRank(client);

	return Plugin_Handled;
}

// Restore menu start
public Action Restore_Menu(int client, int args)
{
	if (IsFakeClient(client) || !IsValidClient(client))
	{
		return Plugin_Handled;
	}

	if (g_fRestoreRunTime[client] <= 0.0)
	{
		// CPrintToChat(client, "{yellow}No previous times found.");
		return Plugin_Handled;
	}

	if (IsClientObserver(client))
	{
		// CPrintToChat(client, "{darkred}You cannot use this feature while spectating");
		return Plugin_Handled;
	}

	char runTime[32];
	FormatTimeFloat(client, g_fRestoreRunTime[client], 3, runTime, sizeof(runTime));
	Menu menu_restore = new Menu(Restore_Menu_Callback);
	menu_restore.SetTitle("恢复上次记录？（%s）", runTime);
	
	menu_restore.AddItem("item_yes", "是", ITEMDRAW_DEFAULT);
	menu_restore.AddItem("item_no", "否", ITEMDRAW_DEFAULT);

	menu_restore.ExitButton = true;
	menu_restore.Display(client, 30);

	return Plugin_Handled;
}

public int Restore_Menu_Callback(Menu menu, MenuAction action, int client, int param2)
{
	switch (action)
	{
		case MenuAction_DisplayItem:
		{
			char info[32];
			menu.GetItem(param2, info, sizeof(info));
			
			return RedrawMenuItem(info);
		}
		case MenuAction_Select:
		{
			char info[32];
			// PrintToServer("Coords[0]: %f | Coords[1]: %f | Coords[2]: %f | Angles[0]: %f | Angles[1]: %f | Angles[2]: %f", g_fRestoreCoords[client][0], g_fRestoreCoords[client][1], g_fRestoreCoords[client][2], g_fRestoreAngles[client][0], g_fRestoreAngles[client][1], g_fRestoreAngles[client][2]);
			// CPrintToChatAll("Coords[0]: %f | Coords[1]: %f | Coords[2]: %f | Angles[0]: %f | Angles[1]: %f | Angles[2]: %f", g_fRestoreCoords[client][0], g_fRestoreCoords[client][1], g_fRestoreCoords[client][2], g_fRestoreAngles[client][0], g_fRestoreAngles[client][1], g_fRestoreAngles[client][2]);
			menu.GetItem(param2, info, sizeof(info));
			if (StrContains(info, "yes") != -1)
			{
				// Set the correct zonegroup and stage upon restoring
				g_iClientInZone[client][2] = g_iRestoreZoneStage[client][0];
				g_Stage[g_iRestoreZoneStage[client][0]][client] = g_iRestoreZoneStage[client][1];

				// Indicate that the client has had their location restored this game - guessing this deals with checkpoints not been passed if enforced
				g_bPositionRestored[client] = true;

				// Set the correct RunTime upon restoring
				g_fStartTime[client] = GetClientTickTime(client) - g_fRestoreRunTime[client];

				// Teleport client to last known location
				TeleportEntity(client, g_fRestoreCoords[client], g_fRestoreAngles[client], NULL_VECTOR);
				// CPrintToChatAll("Teleported client {yellow}%i{default} to Stage {yellow}%i{default} ({yellow}%i{default}), Zonegroup {yellow}%i{default} ({yellow}%i{default}), RunTime {green}%f{default}", client, g_Stage[g_iRestoreZoneStage[client][0]][client], g_iRestoreZoneStage[client][1], g_iClientInZone[client][2], g_iRestoreZoneStage[client][0], g_fRestoreRunTime[client]);

				// Start the timer after client has been teleported
				g_bTimerRunning[client] = true;
				// Indicate that we have finished with location restoring?
				g_bRestorePosition[client] = false;
			}
			else
			{
				// Client's timer is NOT running
				g_bPositionRestored[client] = false;
				g_bTimerRunning[client] = false;
			}
		}
		case MenuAction_End:
		{
			delete menu;
		}
	}
	return client;
}
// Restore menu end