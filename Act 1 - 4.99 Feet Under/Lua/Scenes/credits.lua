function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
        	Audio.Play()
            OWUI.CreateTextboxScene({"* Ben & Sebastian:\n  Rees' Inside Story","* Created by Rees Payne","* Starring: ","* Ben Trainum\n* Sebastian Alberdi\n* Pichusuperlover","* Chris Mason\n* Sean Theisen\n* Brian Lefler","* Gabe Miller\n* McKenna Peer","* Lee Wandel\n* Donovan Keohane\n* Joshua Ott","* Engine Credits:","* 'Undertale' and 'Deltarune'\n  created by Toby Fox\n* Art by Temmie Chang","* 'Unitale' by Ivkuln\n* 'Create Your Frisk' and 'Create\n  Your Kris' by RhenaudTheLukark","* 'MEOW' by AlexiaTilde","* Story Credits:","* 'Doki Doki Literature Club'\n  by Team Salvato","* 'Minecraft' by Mojang Studios","* Art Credits:","* 'Pokemon' by GAME FREAK","* 'Fire Emblem Fates' by\n  Intelligent Systems","* 'Shovel Knight' by Yacht Club\n  Games","* Red d20 image from\n  Koplow Games","* 'Flight Rising' by Jessica\n  Peffer, Dana Pull, and\n  Darren Hill","* 'Mii' avatars created\n  by Nintendo","* 'Portal' by Valve","* 'Pixel Art Bird 16x16'\n  by mag9ici4n","* RareBanjo's profile picture\n  designed by Gabe Miller","* 'Mega Man 2' by Capcom","* 'Kirby Super Star Ultra'\n  by Hal Laboratory","* Music Credits:","* 'Pokemon Mansion' by\n  Junichi Masuda","* 'Normal Battle' by\n  Yoshiaki Fujisawa","* 'Hate You' by Toby Fox","* 'The Rival' by Jake Kaufman","* 'Vriska's Theme' by Toby Fox","* 'Hidden By Night (Lich Yard)' by\n  Jake Kaufman, remix by\n  SiIvagunner","* 'All Quiet at the Gates'\n  by Takafumi Imamura","* 'Road Taken (Roar)' by\n  Rei Kondoh","* 'Midgar Expressway\n  (Crazy Motorcycle Chase)'\n  by Nobuo Uematsu","* 'Chris' by\n  Daniel 'C418' Rosenfeld","* 'Cry' by Carly Rae Jepson\n* Remix by Ctrl Ult Delete\n* Vocals by Gumi","* Special Thanks: ","* McKenna Peer: For creating the\n  Benpai series, and for inspiring\n  me to start writing fanfics.","* Chris Mason: For introducing me\n  to 'Mario and Luigi: Bowser's\n  Inside Story'.","* Gabe Miller: For creating the\n  Gabetopia lore.","* Ben Trainum: For being the owner\n  of neB's Server.","* And YOU, the player!","* Who might actually be\n  one of the people I\n  already mentioned...","* Oh well, that just means\n  you get double thanks!","* In any case, thanks\n  so much for playing\n  my game!","* To be continued...","* (This is the end of the game!)\n* (Press ESC to exit.)"},scene,0)
        	
        elseif scene == 2 then
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line