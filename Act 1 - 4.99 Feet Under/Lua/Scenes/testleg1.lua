function main()
    local self
    self = { }
    self.name = "testleg1" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	--Audio.PlaySound("vhs_buzz",1)
            OWUI.CreateTextboxScene({"* Project Leg Snake - Log 001\n* ??/??/??","* Project Goal: To study the first\n  new lifeform created by\n  Project Final Game.","* Hereafter referred to as\n  a 'leg snake', it boasts\n  powerful limbs and venom.","* In regards to our\n  purposes, its uses seem...\n* ...limited."},scene,0)
        elseif scene == 2 then
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
