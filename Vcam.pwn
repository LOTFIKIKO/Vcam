//******************************************************************************
//                             Vcam by LOTFI
//            the Vcam make player cmera above him like GTA V
//   this function can be use in your gamemode server or like filterscript
//          this function code has creayed by LOTFI in 2022/8/4
//                            enjoy my code !
//******************************************************************************
#include <a_samp>
new VcameraPlayer[MAX_PLAYER_NAME],
	VcameraPlayerDown[MAX_PLAYER_NAME];
//------------------------------------------------------------------------------
public OnGameModeInit()
{
    SetTimer("PlayerVCameraUp", 700, true);
	return 1;
}
public OnPlayerCommandText(playerid, cmdtext[])//-------------------------------
{
	if (strcmp("/vcam", cmdtext, true, 10) == 0)
	{
		TogglePlayerControllable(playerid,0);
		new Float:xc,Float:yc,Float:zc,Float:ac;
		GetPlayerPos(playerid , xc, yc, zc);
		GetPlayerFacingAngle(playerid, ac);
		SetPlayerCameraPos(playerid , xc, yc, zc +20);
		SetPlayerCameraLookAt(playerid , xc, yc, zc);
		VcameraPlayer[playerid] = 25;
		return 1;
	}
	return 0;
}
forward PlayerVCameraUp(playerid);
public PlayerVCameraUp(playerid)
{
	if(VcameraPlayer[playerid] == 1)
	{
    	new Float:xc,Float:yc,Float:zc,Float:ac;
		GetPlayerPos(playerid , xc, yc, zc);
		GetPlayerFacingAngle(playerid, ac);
		SetPlayerCameraPos(playerid , xc, yc, zc +125);
		SetPlayerCameraLookAt(playerid , xc, yc, zc);
		VcameraPlayer[playerid] = 0;
		VcameraPlayerDown[playerid] = 25;
		return 1;
	}
	if(VcameraPlayer[playerid] == 10)
	{
    	new Float:xc,Float:yc,Float:zc,Float:ac;
		GetPlayerPos(playerid , xc, yc, zc);
		GetPlayerFacingAngle(playerid, ac);
		SetPlayerCameraPos(playerid , xc, yc, zc +80);
		SetPlayerCameraLookAt(playerid , xc, yc, zc);
		VcameraPlayer[playerid] = 4;
		return 1;
	}
	if(VcameraPlayer[playerid] == 15)
	{
    	new Float:xc,Float:yc,Float:zc,Float:ac;
		GetPlayerPos(playerid , xc, yc, zc);
		GetPlayerFacingAngle(playerid, ac);
		SetPlayerCameraPos(playerid , xc, yc, zc +60);
		SetPlayerCameraLookAt(playerid , xc, yc, zc);
		VcameraPlayer[playerid] = 9;
		return 1;
	}
	if(VcameraPlayer[playerid] == 20)
	{
    	new Float:xc,Float:yc,Float:zc,Float:ac;
		GetPlayerPos(playerid , xc, yc, zc);
		GetPlayerFacingAngle(playerid, ac);
		SetPlayerCameraPos(playerid , xc, yc, zc +40);
		SetPlayerCameraLookAt(playerid , xc, yc, zc);
		VcameraPlayer[playerid] = 19;
		return 1;
	}
	VcameraPlayer[playerid]--;
//------------------------------------------------------------------------------
	if(VcameraPlayerDown[playerid] == 1)
	{
    	new Float:xc,Float:yc,Float:zc,Float:ac;
		GetPlayerPos(playerid , xc, yc, zc);
		GetPlayerFacingAngle(playerid, ac);
		SetPlayerCameraPos(playerid , xc, yc, zc +23);
		SetPlayerCameraLookAt(playerid , xc, yc, zc);
		VcameraPlayerDown[playerid] = 0;
		TogglePlayerControllable(playerid,1);
		SetCameraBehindPlayer(playerid);
		return 1;
	}
	if(VcameraPlayerDown[playerid] == 5)
	{
    	new Float:xc,Float:yc,Float:zc,Float:ac;
		GetPlayerPos(playerid , xc, yc, zc);
		GetPlayerFacingAngle(playerid, ac);
		SetPlayerCameraPos(playerid , xc, yc, zc +45);
		SetPlayerCameraLookAt(playerid , xc, yc, zc);
		VcameraPlayerDown[playerid] = 4;
		return 1;
	}
	if(VcameraPlayerDown[playerid] == 10)
	{
    	new Float:xc,Float:yc,Float:zc,Float:ac;
		GetPlayerPos(playerid , xc, yc, zc);
		GetPlayerFacingAngle(playerid, ac);
		SetPlayerCameraPos(playerid , xc, yc, zc +75);
		SetPlayerCameraLookAt(playerid , xc, yc, zc);
		VcameraPlayerDown[playerid] = 9;
		return 1;
	}
	if(VcameraPlayerDown[playerid] == 20)
	{
    	new Float:xc,Float:yc,Float:zc,Float:ac;
		GetPlayerPos(playerid , xc, yc, zc);
		GetPlayerFacingAngle(playerid, ac);
		SetPlayerCameraPos(playerid , xc, yc, zc +100);
		SetPlayerCameraLookAt(playerid , xc, yc, zc);
		VcameraPlayerDown[playerid] = 19;
		return 1;
	}
	VcameraPlayerDown[playerid]--;
	return 1;
}
//------------------------------------------------------------------------------
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------
