function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	Audio.Stop()
        	Audio.PlaySound("lee_explode")
        	OWUI.CreateTextboxScene({"* *CRASH*"},scene,0)
        elseif scene == 2 then
        	Audio.Play()
        	Overworld.GotoRoom(2,440,160,3)
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
