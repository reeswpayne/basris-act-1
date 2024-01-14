function main()
    local self
    self = { }
    self.name = "prejon" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
            OWUI.CreateTextboxScene({"* Lee: Ugh...Ooooohhh...","* Ben: What just happened?\n* He's starting to...expand?","* Seb: The whole floor is shaking...\n  This room is breaking apart!","* Pichu: Oh god, we're going down!!!","* Lee: ROOOAAAGH!!!"},scene,0)
        elseif scene == 2 then
        	Overworld.StartInstant("Vs. Nightemare Lee")
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line