function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
            OWUI.CreateTextboxScene({"* Monika: What?\n* What even is this?!","* ???: Well it works off this\n  very specific physics exploit,\n  you see the slime blocks-","* Monika: Okay, nevermind!\n  I'm sorry I asked! Please just\n  focus on driving!","* ???: That might be a problem.\n* They're gaining on us...!"},scene,0)
        	
        elseif scene == 2 then
        	Overworld.StartInstant("Vs. Don&Banjo")
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line