function main()
    local self
    self = { }
    self.name = "log2" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	--Audio.PlaySound("vhs_buzz",1)
            OWUI.CreateTextboxScene({"* Log 009\n* ??/??/??","* The Quantum Meme - A unit that\n  measures the energy derived\n  from viral memories.","* It is the source of our\n  current crisis...\n* And our salvation.","* Astrals' magic is powerful,\n  but limited by our biology.","* Thus, we must find a way\n  to unleash its full\n  potential."},scene,0)
        elseif scene == 2 then
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
