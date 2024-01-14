function main()
    local self
    self = { }
    self.name = "log1" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	--Audio.PlaySound("vhs_buzz",1)
        	Audio.PlaySound("mus_chris")
            OWUI.CreateTextboxScene({"* Chris: Yes, she's still here with\n  me. We're not that far away, we\n  can just walk there.","* Chris: No, I couldn't retrieve\n  any blocks...I'm sorry, okay!\n  I know how long it took...","* Chris: Okay look, none of that is\n  important right now! The plan\n  can proceed now, with her here.","* Chris: Yeah, see you in a bit,\n  Sean.","* Monika: Chris...","* Chris: Ah, you're finally awake.","* Chris: Now we can-"},scene,0)
        elseif scene == 2 then
        	Overworld.GotoRoom(3,340,380,0)
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
