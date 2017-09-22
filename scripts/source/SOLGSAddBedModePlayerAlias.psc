Scriptname SOLGSAddBedModePlayerAlias extends ReferenceAlias  

Event OnInit()
	RegisterForCrosshairRef()
EndEvent

Event OnCrosshairRefChange(ObjectReference ref)
	if (SelfQuest.IsRunning())
	;	debug.trace("[SSS] Crosshair had " + ref + " targeted.")
		if (ref)
			Furniture bed = ref.GetBaseObject() as Furniture
			if (bed)
			;	debug.trace("[SSS] Crosshair had " + bed + " targeted.")
				(SelfQuest as SOLGSAddBedMain).TargetBed = bed
			endif
		else
			(SelfQuest as SOLGSAddBedMain).TargetBed = none
		endif
	endif
EndEvent

Quest Property SelfQuest  Auto  