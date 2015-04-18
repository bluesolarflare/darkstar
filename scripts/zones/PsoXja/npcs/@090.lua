-----------------------------------
-- Area: PsoXja
-- NPC:  TOWER_A_Lift_0 @pos 300 15.450 -60
-----------------------------------

-----------------------------------


-----------------------------------
-- onSpawn
-----------------------------------
function onSpawn(npc)
    local lift = 090;
    local elevator = {
                        id = 0,                      -- id is usually 0
                        lowerDoor = npc:getID() + 2, -- lowerDoor's npcid
                        upperDoor = npc:getID() + 1, -- upperDoor usually has a smaller id than lowerDoor
                        elevator = npc:getID(), 	 -- actual elevator npc's id is usually the smallest
                        started = 1,                 -- is the elevator already running
                        regime = 1,                  -- 
                     }
    
    npc:setElevator(elevator.id, elevator.lowerDoor, elevator.upperDoor, elevator.elevator, elevator.started, elevator.regime);
end;