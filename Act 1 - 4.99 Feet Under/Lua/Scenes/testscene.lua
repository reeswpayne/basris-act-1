function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	Audio.Pause()
            OWUI.CreateTextboxScene({"* Where am I?","* Agh! My loins!\n* My calves!","* My body's all out of shape...\n* Where am I? What happened?","* Pretty sure this isn't my house.\n* Oh, there's a mirror here..."},scene,0)
        elseif scene == 2 then
        	Overworld.GotoRoom(2,80,350,1)
        	Audio.Unpause()
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
