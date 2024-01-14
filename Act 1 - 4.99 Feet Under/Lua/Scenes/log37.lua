function main()
    local self
    self = { }
    self.name = "log37" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	--Audio.PlaySound("vhs_buzz",1)
            OWUI.CreateTextboxScene({"* Log 037\n* ??/??/??","* We finally managed to\n  produce a working prototype.","* Preliminary assessments indicate\n  that its magical power exceeds\n  that of most Astrals.","* However, we have been\n  unsuccessful in separating\n  the subjects...","* I recommend that we create\n  an additional task force\n  to look into this."},scene,0)
        elseif scene == 2 then
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
