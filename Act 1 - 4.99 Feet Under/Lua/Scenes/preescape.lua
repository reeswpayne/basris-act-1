function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	Audio.Volume(0.25)
            OWUI.CreateTextboxScene({"* Banjo: Aaah, they're gettin\n  away!","* Banjo: Damn, that thing is fast!\n* They're bustin the walls down,\n  dude!","* Banjo: We have GOT to try that.","* Donovan: Fine, whatever!\n* Just hurry up and catch\n  them!"},scene,0)
        	
        elseif scene == 2 then
        	Overworld.GotoRoom(2,400,560,0)
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line