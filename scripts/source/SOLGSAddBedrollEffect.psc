Scriptname SOLGSAddBedrollEffect extends activemagiceffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	(BedCatchQuest as SOLGSAddBedMain).AddBedToFormList(SexLabBeds, "bed")
	(BedCatchQuest as SOLGSAddBedMain).AddBedToFormList(SexLabBedRolls, "bedroll")
EndEvent

Quest Property BedCatchQuest  Auto  
FormList Property SexLabBeds  Auto  
FormList Property SexLabBedRolls  Auto  
