function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
            OWUI.CreateTextboxScene({"* Chris: It's felt like forever for\n  me, too.","* Chris: But now we can start a\n  new forever, together.","* Chris: Monika...\n  There's no one I'd rather have\n  by my side.","* Monika: So this is what\n  real love feels like...","* Monika: It feels so warm\n  and fuzzy...","* Monika: ...Can we stay\n  here for a little bit?","* Chris: Yeah...\n* Yeah, that would be nice."},scene,0)
        elseif scene == 2 then
        	Audio.StopAll()
        	Overworld.GotoRoom(5,50,40,1)
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
