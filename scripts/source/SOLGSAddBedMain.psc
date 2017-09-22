Scriptname SOLGSAddBedMain extends Quest

 
Function AddBedToFormList(FormList flist, string listname)
	if (self.IsRunning())
		Furniture bed = TargetBed
		
		if (bed)
			if flist.HasForm(bed)
				flist.RemoveAddedForm(bed)
				debug.notification(bed.GetName() + " removed from " + listname + " list")
			else
				flist.AddForm(bed)
				debug.notification(bed.GetName() + " added to " + listname + " list")
			endif
		else
			debug.notification("None target or not Furniture target")
		endif
	else
		debug.notification("AddBed Quest is not running") ; debug
	endif
EndFunction

Function init()
	Actor player = Game.GetPlayer()
	
	if (!player.HasSpell(SOLGSAddBedsPower))
		player.AddSpell(SOLGSAddBedsPower)
		player.AddSpell(SOLGSAddBedrollsPower)
		player.AddSpell(SOLGSAddDoublebedsPower)
	endif
	
	self.Start()
EndFunction

Function quit()
	Actor player = Game.GetPlayer()
	
	player.RemoveSpell(SOLGSAddBedsPower)
	player.RemoveSpell(SOLGSAddBedrollsPower)
	player.RemoveSpell(SOLGSAddDoublebedsPower)
	
	self.Stop()
EndFunction

Furniture Property TargetBed  Auto  

SPELL Property SOLGSAddBedsPower  Auto  
SPELL Property SOLGSAddBedrollsPower  Auto  
SPELL Property SOLGSAddDoublebedsPower  Auto  
