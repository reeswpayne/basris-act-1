function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	Audio.Stop()
            OWUI.CreateTextboxScene({"* Chris: Aaah!","* Monika: I've been searching\n  for so long...","* Monika: Every time the world\n  tried to keep us apart,\n  I fought back.","* Monika: Every time I felt like\n  dying, I rememberd that you were\n  out there somewhere.","* Monika: It feels like I've been\n  waiting forever for this\n  moment...","* Monika: To hear the sound of\n  your heartbeat...","* Chris: I..."},scene,0)
        elseif scene == 2 then
        	Overworld.GotoRoom(4,340,380,0)
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
