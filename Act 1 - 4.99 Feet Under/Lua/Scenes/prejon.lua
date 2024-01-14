function main()
    local self
    self = { }
    self.name = "prejon" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	Audio.Stop()
            OWUI.CreateTextboxScene({"* Lee: I yield! A most excellent\n  bout!","* Seb: Eh, it was alright.\n  Could've used more fire.","* Ben: So you'll let us go\n  free now, right?","* ???: Nah."},scene,0)
        elseif scene == 2 then
        	Audio.PlaySound("jon_jump")
        	Overworld.GotoRoom(2,340,160,1)
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line