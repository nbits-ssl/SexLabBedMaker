Scriptname SOLGSAddDoublebedEffect extends activemagiceffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	(BedCatchQuest as SOLGSAddBedMain).AddBedToFormList(SexLabBeds, "bed")
	(BedCatchQuest as SOLGSAddBedMain).AddBedToFormList(SexLabBedDoubles, "double bed")
EndEvent

Quest Property BedCatchQuest  Auto  
FormList Property SexLabBeds  Auto  
FormList Property SexLabBedDoubles  Auto  
