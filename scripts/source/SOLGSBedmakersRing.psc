Scriptname SOLGSBedmakersRing extends ObjectReference

Event OnEquipped(Actor akActor)
	(SOLGAddBedMode as SOLGSAddBedMain).init()
EndEvent

Event OnUnequipped(Actor akActor) 
	(SOLGAddBedMode as SOLGSAddBedMain).quit()
	debug.notification("AddBedMode stopped and Spells removed")
EndEvent

Quest Property SOLGAddBedMode  Auto  
