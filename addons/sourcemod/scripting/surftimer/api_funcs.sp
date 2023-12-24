// Get the rank of the client in each style 
public void api_GetPlayerRankAllStyles(int client)	   // API Only
{
	char	 apiRoute[512];

	DataPack dp = new DataPack();
	dp.WriteString("api_GetPlayerRankAllStyles");
	dp.WriteFloat(GetGameTime());
	dp.WriteCell(client);
	dp.Reset();

	FormatEx(apiRoute, sizeof(apiRoute), "%s/surftimer/selectRankedPlayerRankAllStyles?steamid32=%s", g_szApiHost, g_szSteamID[client]);
	if (g_bApiDebug)
	{
		PrintToServer("API ROUTE: %s", apiRoute);
	}

	/* RipExt - GET */
	HTTPRequest request = new HTTPRequest(apiRoute);
	request.Get(apiSelectRankedPlayersRankCallback, dp);
}

public void api_updatePlayerConnections(int client)
{
	// Prepare API call body
	JSONObject jsonObject = JSONObject.FromString("{}");

	DataPack   dp		  = new DataPack();
	dp.WriteString("updateConnections");
	dp.WriteFloat(GetGameTime());
	dp.Reset();

	char apiRoute[512];
	FormatEx(apiRoute, sizeof(apiRoute), "%s/surftimer/updatePlayerConnections?steamid32=%s", g_szApiHost, g_szSteamID[client]);
	if (g_bApiDebug)
	{
		PrintToServer("API ROUTE: %s", apiRoute);
	}

	/* RipExt - PUT */
	HTTPRequest request = new HTTPRequest(apiRoute);
	request.Put(jsonObject, apiPutCallback, dp);

    /* We should already have that from new PlayerObject */
	// // Count players rank
	// if (IsValidClient(client))
	// {
	// 	api_GetPlayerRankAllStyles(client);
	// }

	delete jsonObject;
}

public void api_insertNewPlayerRank(int client)
{
	// New player - insert
	char szUName[MAX_NAME_LENGTH];
	GetClientName(client, szUName, MAX_NAME_LENGTH);

	// SQL injection protection
	char szName[MAX_NAME_LENGTH * 2 + 1];
	SQL_EscapeString(g_hDb, szUName, szName, MAX_NAME_LENGTH * 2 + 1);

	char szSteamId64[64];
	GetClientAuthId(client, AuthId_SteamID64, szSteamId64, MAX_NAME_LENGTH, true);
	char apiRoute[512], body[1024];

	// Prepare API call body
	FormatEx(body, sizeof(body), api_insertPlayerRank, g_szSteamID[client], szSteamId64, szName, g_szCountry[client], g_szCountryCode[client], g_szContinentCode[client], GetTime(), 0);
	JSONObject jsonObject;
	jsonObject	= JSONObject.FromString(body);

	DataPack dp = new DataPack();
	dp.WriteString("api_insertPlayerRank2");
	dp.WriteFloat(GetGameTime());
	dp.WriteCell(client);
	dp.Reset();

	FormatEx(apiRoute, sizeof(apiRoute), "%s/surftimer/insertPlayerRank", g_szApiHost);
	if (g_bApiDebug)
	{
		PrintToServer("API ROUTE: %s", apiRoute);
		PrintToServer("API BODY: %s", body);
	}

	/* RipExt - POST */
	HTTPRequest request = new HTTPRequest(apiRoute);
	request.Post(jsonObject, apiPostCallback, dp);

	delete jsonObject;
}

public void api_insertNewPlayerOptions(int client)
{
	// "INSERT INTO ck_playeroptions2 (steamid, timer, hide, sounds, chat, viewmodel, autobhop, checkpoints, centrehud, module1c, module2c, module3c, module4c, module5c, module6c, sidehud, module1s, module2s, module3s, module4s, module5s) VALUES('%s', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i', '%i');";
	char apiRoute[512];
	FormatEx(apiRoute, sizeof(apiRoute), "%s/surftimer/insertPlayerOptions?steamid32=%s", g_szApiHost, g_szSteamID[client]);

	// Prepare API call body
	JSONObject jsonObject = JSONObject.FromString("{}");

	DataPack   dp		  = new DataPack();
	dp.WriteString("api_insertNewPlayerOptions");	 // Actual new player I believe :thonk:
	dp.WriteFloat(GetGameTime());
	dp.Reset();

	if (g_bApiDebug)
	{
		PrintToServer("API ROUTE: %s", apiRoute);
	}

	/* RipExt */
	HTTPRequest request = new HTTPRequest(apiRoute);
	request.Post(jsonObject, apiPostCallback, dp);

	g_bTimerEnabled[client]		  = true;
	g_bHide[client]				  = false;
	g_bEnableQuakeSounds[client]  = true;
	g_bHideChat[client]			  = false;
	g_bViewModel[client]		  = true;
	g_bAutoBhopClient[client]	  = true;
	g_bCheckpointsEnabled[client] = true;
	g_SpeedGradient[client]		  = 3;
	g_SpeedMode[client]			  = 0;
	g_bCenterSpeedDisplay[client] = false;
	g_bCentreHud[client]		  = true;
	g_iTeleSide[client]			  = 0;
	g_iCentreHudModule[client][0] = 1;
	g_iCentreHudModule[client][1] = 2;
	g_iCentreHudModule[client][2] = 3;
	g_iCentreHudModule[client][3] = 4;
	g_iCentreHudModule[client][4] = 5;
	g_iCentreHudModule[client][5] = 6;
	g_bSideHud[client]			  = true;
	g_iSideHudModule[client][0]	  = 5;
	g_iSideHudModule[client][1]	  = 0;
	g_iSideHudModule[client][2]	  = 0;
	g_iSideHudModule[client][3]	  = 0;
	g_iSideHudModule[client][4]	  = 0;
	g_bSpecListOnly[client]		  = true;
	g_iPrespeedText[client]		  = false;
	g_iCpMessages[client]		  = false;
	g_iWrcpMessages[client]		  = false;
	g_bAllowHints[client]		  = true;
	g_iCSDUpdateRate[client]	  = 1;
	g_fCSD_POS_X[client]		  = 0.5;
	g_fCSD_POS_Y[client]		  = 0.4;
	g_iCSD_R[client]			  = 255;
	g_iCSD_G[client]			  = 255;
	g_iCSD_B[client]			  = 255;
	g_PreSpeedMode[client]		  = 0;
}