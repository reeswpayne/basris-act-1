function main()
    local self
    self = { }
    self.name = "lab1door" -- The event name. Possibly unneeded? Leave this in for future things.
    self.speed = 2
    self.hitboxwidth = 400
    self.hitboxheight = 200
    self.sprite = "road"
    self.timer = 0
    function self.OnLoad(map)
        self.sprite.Scale(2,2)
    end
    function self.OnCollide()
    	--Audio.PlaySound("mus_chris")
        Overworld.GotoRoom(2,340,40,0)
    end
    function self.Update()

    end
    return self -- Don't remove this line
end

return main() -- Don't remove this line

