-----------------------------------
--	[Command name]: cs
--	[Author      ]: 
--	[Description ]: 
-----------------------------------

-----------------------------------
-- Action
-----------------------------------

function onTrigger(player,csid)
	player:startEvent(csid);
end;

-----------------------------------
-- onEventUpdate Action
-----------------------------------

function onEventUpdate(player,csid,option)
--print("CS : onEventUpdate");
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
--print("CS : onEventFinish");
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;