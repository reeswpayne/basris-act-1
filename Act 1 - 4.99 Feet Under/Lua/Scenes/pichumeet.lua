function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	Audio.Play()
        	Audio.Volume(0.25)
            OWUI.CreateTextboxScene({"* Pichu: Hey.","* Seb: AAAAAAAAAAAAAAAAAAAAAAAAAA\n  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA","* Seb: Aah! Ooh! Not dead!","* Pichu: Relax, I'm not gonna\n  kill you.","* Pichu: Your\n  'getting-Sebastian-killed' skills\n  clearly exceed my own.","* Seb: K, so you're not a\n  monster?","* Seb: Then you must be my\n  promised waifu!","* Pichu: Wha-","* Seb: No need for the awestruck\n  look. It was implied.\n* Basic anime rules.","* Pichu: Oh god...*sigh*\n* Please use your brain for\n  at least two seconds.","* Seb: Wait...That voice...!\n* ...Pichu?!","* Pichu: Mm-hmm. Pichu.","* Seb: Bro, you're so fluffy\n  and small! What the heck!","* Pichu: And you wonder why I\n  never show my appearance.","* Seb: Wait! Whoa!\n* Wha-How did you get here?!","* Pichu: Walked down the hallway.\n* You probably didn't notice me\n  because you passed out","* after beating up those snakes.","* Seb: Yeah, I crushed them with\n  my hammer!\n* ...When did I get a hammer?","* Pichu: Huh, it kinda\n  looked like...\n* The Benhammer...","* Pichu: WHAT DID YOU DO WITH\n  BEN?!","* Seb: Bro.\n* I have not even laid eyes\n  on him.","* Seb: I did have this really\n  weird dream though. While I was,\n  uh, passed out.","* Pichu: Wonderful. Pleeease\n  go on.","* Seb: There was this mysterious\n  character who vaguely resembled\n  Ben.","* Seb: He threatened to give\n  me a haircut...","* Pichu: H-Haircut...?","* Pichu: We gotta go!"},scene,0)
        elseif scene == 2 then
        	Overworld.GotoRoom(3,340,160,0)
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line
