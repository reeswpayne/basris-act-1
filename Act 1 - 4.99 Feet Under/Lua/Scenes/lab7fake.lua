function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
            OWUI.CreateTextboxScene({"* Banjo: Intruder located!!\n* Booyah!","* Donovan: Put the portal gun\n  down and step away\n  from the anime girl!","* ???: Damn, we've been\n  detected!","* Monika: These people...\n* They were the ones that captured\n  me, I think!","* Monika: My memories are\n  a little fuzzy...","* ???: Don and Banjo...the Engaged\n  Blurs. Two of GabeCorp's most\n  elite enforcers.","* ???: Known for completing\n  missions faster than anyone\n  else on record.","* Banjo: Our reputations\n  precede us, it's true!","* ???: Donovan, the Wild Rancher...\n* Able to shoot down a raccoon\n  from over five keks away.","* ???: And Banjo, the Sus Wind...\n* He amputated all his limbs just\n  to have a challenge again.","* Donovan: Okay, we fucking get it!\n  You don't need to list all the\n  ways we're gonna beat your ass.","* Banjo: We'll take you out and\n  still have loads of time for\n  the wedding!","* Donovan: That's assuming you\n  don't postpone it again...","* Banjo: Hey, I gotta keep\n  looking for those\n  timesaves!","* Banjo: Only got one shot\n  at tying the knot!","* ???: I'm all out of moon\n  dust, so no more thinking\n  with portals.","* ???: Then I'll have to use\n  Plan B.","* ???: I hate to ask this of you,\n  but can you fight these guys\n  off for a bit?","* ???: I need to secure\n  the escape route.","* Monika: I'll try my best!","* ???: Woah, that's a\n  LOOONG pen. You should\n  be fine.","* Donovan: Guards, ATTACK!!!"},scene,0)
        	
        elseif scene == 2 then
        	Overworld.StartInstant("Vs. Guards")
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line