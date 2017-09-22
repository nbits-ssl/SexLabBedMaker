Scriptname SOLGSAddBedEffect extends activemagiceffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	(BedCatchQuest as SOLGSAddBedMain).AddBedToFormList(SexLabBeds, "bed")
EndEvent

Quest Property BedCatchQuest  Auto  
FormList Property SexLabBeds  Auto  