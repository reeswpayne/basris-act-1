function main()
    local self
    self = { }
    self.name = "sebfreak" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	Audio.Volume(0.25)
            OWUI.CreateTextboxScene({"* Seb: WUT","* Seb: OH GOD I TURNED INTO A \n  FURRY HELP HELP HELP","* Seb: Wait, no...\n  Gotta be logical about this...","* Seb: How did I get here?\n  The last thing I remember is...","* Seb: ...Right!\n  I was playing that new game\n  Gabe sent me.","* Seb: Yooo, I must have ended up\n  inside the game!  This is\n  just like Re:Zero!!","* Seb: REM HERE I COME!!!"},scene,0)
        elseif scene == 2 then
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
