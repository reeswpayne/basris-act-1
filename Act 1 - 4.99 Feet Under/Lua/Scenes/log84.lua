function main()
    local self
    self = { }
    self.name = "log84" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	--Audio.PlaySound("vhs_buzz",1)
            OWUI.CreateTextboxScene({"* Log 084\n* ??/??/??","* The realization took me\n  an entire year.\n* I should have seen it earlier.","* Project Final Game has far\n  exceeded its original purpose.","* The things that the\n  prototype has created...","* To use them merely as\n  a farm for more memories\n  would be a waste.","* The commission disagrees\n  with me, however.","* They threatened to confiscate\n  everything if we don't stick\n  to the initial plan.","* Imbeciles!!\n* ...Perhaps this truly will be\n  the end of the Astral Kingdom."},scene,0)
        elseif scene == 2 then
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
