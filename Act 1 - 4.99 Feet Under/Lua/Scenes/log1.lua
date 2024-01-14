function main()
    local self
    self = { }
    self.name = "log1" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	--Audio.PlaySound("vhs_buzz",1)
            OWUI.CreateTextboxScene({"* Log 001\n* ??/??/??","* I had my final talk with\n  the commission today.","* As expected, I was chosen\n  to receive the grant.","* Today marks the start of\n  the project to save the future...\n* The start of Project Final Game."},scene,0)
        elseif scene == 2 then
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
