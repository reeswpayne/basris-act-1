function main()
    local self
    self = { }
    self.name = "testleg1" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	--Audio.PlaySound("vhs_buzz",1)
            OWUI.CreateTextboxScene({"* Project Leg Snake - Log 023\n* ??/??/??","* Specimen 386 has proven\n  largely successful.","* It displays greatly reduced\n  brain function, but is otherwise\n  identical","* to a naturally born leg snake.","* We will begin testing the\n  Dreamereaper Infusion process\n  on other lifeforms."},scene,0)
        elseif scene == 2 then
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
