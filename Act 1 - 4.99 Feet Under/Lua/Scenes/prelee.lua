function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	Audio.Stop()
        	Audio.PlaySound("lee_appear")
            OWUI.CreateTextboxScene({"* Lee: My sneak attack succeeds!\n* Roll for initiative!","* Ben: What th- Agh!\n* Did you just throw a die\n  at me?!","* Lee: The laws of this land\n  dictate that I must kill you.","* Lee: However, my alignment is\n  Neutral Good. I will give you\n  a chance to earn my mercy.","* Lee: If you roll high enough to\n  pass the save check before I\n  kill you, I'll let you go free.","* Lee: Now steel thy shovels!","* Seb: What the actual s-"},scene,0)
        elseif scene == 2 then
        	Overworld.StartInstant("Vs. Lee")
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line