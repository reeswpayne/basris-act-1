function main()
    local self
    self = { }
    self.name = "testscene" -- The scene name, make sure this is also the filename.
    function self.HandleScene(scene)
        if scene == 1 then
            OWUI.CreateTextboxScene({"* Seb: Yo. There is a man\n  up here.","* Seb: Man's hair looking like\n  GARBAGE. That is not okay.","* Ben: ...I don't wanna talk\n  about it.","* Pichu: BEN?! Is that you?\n* Oh god, your hair...\n* A-are you alright?","* Ben: I'm not injured, at least.\n* When I came to after we fell\n  down here, some weird shadow me","* showed up, de-powered my hair,\n  and stole my hammer.\n* He dropped this cool sword tho.","* Seb: Hey, that sounds like\n  my dream! And I acquired\n  your hammer as well...","* Seb: It's like we're linked in\n  some way!\n* Yeah! Fluffy bois unite!","* Ben: I don't think 'fluffy' is\n  really applicable anymore...\n* ...Wait, who are you?","* Pichu: It's a Sebastian.\n* Seems like he was infused with\n  some Astral DNA...","* Seb: Wut.\n* What does that mean???","* Seb: How is this so natural\n  to you, Pichu?","* Pichu: Well, I-","* Ben: Guys, watch out!"},scene,0)
        	
        elseif scene == 2 then
        	Overworld.GotoRoom(4,340,160,0)
            Scenes.Stop()
        end
    end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line