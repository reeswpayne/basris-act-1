function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	Audio.Stop()
            OWUI.CreateTextboxScene({"* Female Voice: At last. \n* All the pieces are falling\n  into place.","* Male Voice: This boy...?\n* He is still under their power.\n  I should just kill him now.","* Female Voice: Patience, Enderwing.\n* You'll have plenty of time to\n  kill him later.","* Female Voice: It's for your own\n  good that you must wait.","* Female Voice: Always so hasty...\n* Have you forgotten what I\n  taught you?","* Male Voice: We must reveal the\n  meaninglessness of this world...","* Male Voice: ...By taking what\n  they value most. Time for\n  a little haircut."},scene,0)
        elseif scene == 2 then
        	Overworld.GotoRoom(2,520,600,3)
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
