function main()
    local self
    self = { }
    self.name = "log1" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	--Audio.PlaySound("vhs_buzz",1)
        	Audio.Stop()
            OWUI.CreateTextboxScene({"* Monika: Ow...\n* Great, where am I now?","* Monika: We got away from those\n  people, then we crashed, and...","* Monika: Wait! Where did he go?\n* I don't see him anywhere\n  nearby...","* Monika: Please, no...I was so\n  close! He has to be around here\n  somewhere."},scene,0)
        elseif scene == 2 then
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
