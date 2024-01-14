function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
            OWUI.CreateTextboxScene({"* ???: Alright, made it!","* ???: And without going loud\n  as well.\n* Banjo's let me off easy.","* ???: Now to turn off\n  this GabeCorp Brand\n  Quantum Cryopod(TM)...","* ???: isuccrainbows99...\n* Got it!","* Monika: Huh? Where\n  am I...?","* ???: A GabeCorp holding\n  room. That I'm breaking\n  you out of.","* Monika: What...?\n* Who are you?","* ???: Just come with me.\n* It's for your own good."},scene,0)
        elseif scene == 2 then
        	Overworld.GotoRoom(6,320,500,1)
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line