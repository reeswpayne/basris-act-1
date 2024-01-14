function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	Audio.Play()
        	Audio.Volume(0.25)
            OWUI.CreateTextboxScene({"* Jon: Sup, bitches!","* Lee: Your Highness...!\n* What is the meaning of this?!","* Seb: Oh wow, McKenna's here too.\n* Wait, are those cat ears?! And a\n  tail?!","* Seb: Oh god, this explains\n  everything!","* Seb: I'm trapped in furry hell!\n* Aaaaahhhh!!!","* Jon: Hey, chill the fuck out, Seb.\n  You look rad as a horse dude!","* Jon: And this is nowhere close\n  to Furry Hell, trust me.","* Jon: This is Gabetopia!\n* A wondrous utopia filled with us\n  Astrals, the ultimate lifeforms!","* Jon: Speaking of which...","* Lee: That smug smirk...What are\n  you planning, Your Highness? I\n  haven't prepared notes for this...","* Jon: Lee, have you forgotten\n  the most important rule\n  of the Belly Games?","* Jon: ONLY. ONE. SURVIVES.","* Lee: And what of those three?\n* You show no intention of\n  splitting the party.","* Jon: Nah, we've still got some\n  spicy plans for our special\n  guests over there.","* Jon: But as for you...","* Jon: An officer of Gabetopia\n  should know it's his duty\n  to fight till his last breath.","* Jon: If you plan to surrender,\n  then I guess I'll just have\n  to make you keep fighting.","* Lee: And how do you plan to\n  do that?","* Jon: Well, uh, I'm gonna go ahead\n  and activate those dormant genes\n  I injected you with...","* Lee: Ah! At the initiation-Agh!","* Jon: This is gonna be hella hype!\n* Uh, have fun, boys!"},scene,0)
        elseif scene == 2 then
        	Audio.PlaySound("jon_bomb")
        	Audio.Stop()
        	Overworld.GotoRoom(3,340,160,1)
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line