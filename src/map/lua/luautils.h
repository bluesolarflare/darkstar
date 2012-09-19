﻿/*
===========================================================================

  Copyright (c) 2010-2012 Darkstar Dev Teams

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/

  This file is part of DarkStar-server source code.

===========================================================================
*/

#ifndef _LUAUTILS_H
#define _LUAUTILS_H

#include "../../common/cbasetypes.h"
#include "../battleutils.h"
/************************************************************************
*																		*
*																		*
*																		*
************************************************************************/

class CBaseEntity;
class CBattleEntity;
class CCharEntity;
class CItem;
class CRegion;
class CStatusEffect;
class CMobSkill;
class CInstance;

namespace luautils
{
	extern struct lua_State* LuaHandle;

	int32 init();
	int32 free();
	int32 print(lua_State*);

    int32 SendUncnown0x39Packet(lua_State*);                                    // временное решение для работы гейзеров в Dangruf_Wadi

	int32 GetNPCByID(lua_State*);												// Returns NPC By Id
	int32 GetMobByID(lua_State*);												// Returns Mob By Id
    int32 GetRegionOwner(lua_State*);										    // узнаем страну, владеющую текущим регионом
	int32 SpawnMob(lua_State*);													// Spawn Mob By Mob Id - NMs, BCNM...
	int32 DespawnMob(lua_State*);												// Despawn (Fade Out) Mob By Id
	int32 GetPlayerByName(lua_State*);											// Gets Player ref from a name supplied
	int32 GetMobAction(lua_State*);												// Get Mobs current action
	int32 VanadielTOTD(lua_State*);												// текущее игровое время суток
	int32 VanadielHour(lua_State*);												// текущие Vanadiel часы
	int32 VanadielMinute(lua_State*);											// текущие Vanadiel минуты
	int32 VanadielDayOfTheYear(lua_State*);										// Gets Integer Value for Day of the Year (Jan 01 = Day 1) 
	int32 VanadielDayOfTheMonth(lua_State*);									// Gets day of the month (Feb 6 = Day 6)
	int32 VanadielYear(lua_State*);												// Gets the current Vanadiel Year
	int32 VanadielMonth(lua_State*);											// Gets the current Vanadiel Month 
	int32 VanadielDayElement(lua_State*);										// Gets element of the day (0: fire, ...)
	int32 VanadielMoonPhase(lua_State*);										// Gets the current Vanadiel Moon Phase
    int32 SetVanadielTimeOffset(lua_State* L);
	int32 StartElevator(lua_State*); 
	int32 GetServerVariable(lua_State*);
	int32 SetServerVariable(lua_State *);
	int32 OnServerStart();														// triggers when game server starts up
		
	int32 OnZoneIn(CCharEntity* PChar);											// triggers when a player zones into a zone
	int32 OnZoneInitialise(uint8 ZoneID);										// triggers when zone is loaded
	int32 OnRegionEnter(CCharEntity* PChar, CRegion* PRegion);					// when player enters a region of a zone
	int32 OnRegionLeave(CCharEntity* PChar, CRegion* Pregion);					// when player leaves a region of a zone
    int32 OnTransportEvent(CCharEntity* PChar, uint32 TransportID);

	int32 OnTrigger(CCharEntity* PChar, CBaseEntity* PNpc);						// triggered when user targets npc and clicks action button
	int32 OnEventUpdate(CCharEntity* PChar, uint16 eventID, uint32 result);		// triggered when game triggers event update during cutscene
	int32 OnEventFinish(CCharEntity* PChar, uint16 eventID, uint32 result);		// triggered when cutscene/event is completed
	int32 OnTrade(CCharEntity* PChar, CBaseEntity* PNpc);						// triggers when a trade completes with an npc

	int32 OnEffectGain(CBattleEntity* PEntity, CStatusEffect* StatusEffect);	// triggers when an effect is applied to pc/npc
	int32 OnEffectTick(CBattleEntity* PEntity, CStatusEffect* StatusEffect);	// triggers when effect tick timer has been reached
	int32 OnEffectLose(CBattleEntity* PEntity, CStatusEffect* StatusEffect);	// triggers when effect has been lost

	int32 OnItemUse(CBaseEntity* PTarget, CItem* PItem);						// triggers when item is used
	int32 OnItemCheck(CBaseEntity* PTarget, CItem* PItem, uint32 param = 0);	// check to see if item can be used

	int32 OnSpellCast(CBattleEntity* PCaster, CBattleEntity* PTarget);			// triggered when casting a spell

    int32 OnMobSpawn(CBaseEntity* PMob);										// triggers on mob spawn
	int32 OnMobDeath(CBaseEntity* PMob, CBaseEntity* PKiller);					// triggers on mob death
	int32 OnMobEngaged(CBaseEntity* PMob, CBaseEntity* PTarget);					// triggers on mob engaging a target

	int32 OnBcnmEnter(CCharEntity* PChar, CInstance* PInstance);				//triggers when enter a bcnm
	int32 OnBcnmLeave(CCharEntity* PChar, CInstance* PInstance, uint8 LeaveCode);	//triggers when leaving a bcnm
																//Code 1=via Circle 2=warp/dc 3=win 4=lose
	int32 OnBcnmRegister(CCharEntity* PChar, CInstance* PInstance);				//triggers when successfully registered a bcnm
	
	int32 OnMobWeaponSkill(CBaseEntity* PChar, CBaseEntity* PMob, CMobSkill* PMobSkill);// triggers when mob weapon skill is used
	int32 OnPetAbility(CBaseEntity* PPet, CBaseEntity* PMob, CMobSkill* PMobSkill, CBaseEntity* PPetMaster);// triggers when pet uses an ability
	int32 OnUseWeaponSkill(CCharEntity* PChar, CBaseEntity* PMob, uint16* tpHitsLanded, uint16* extraHitsLanded);				// triggers when weapon skill is used
	int32 OnUseAbility(CCharEntity* PChar, CBattleEntity* PTarget);				// triggers when job ability is used

};

#endif //- _LUAUTILS_H -
