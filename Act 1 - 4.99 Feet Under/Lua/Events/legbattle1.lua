function main()
    local self
    self = { }
    self.name = "legbattle1" -- The event name. Possibly unneeded? Leave this in for future things.
    self.speed = 2
    self.hitboxwidth = 400
    self.hitboxheight = 200
    self.sprite = "lab"
    self.timer = 0
    legtrigger = 1
    function self.OnLoad(map)
        self.sprite.Scale(2,2)
    end
    function self.OnCollide()
    	if legtrigger == 1 then
        	--Overworld.StartCYK("Vs. Leg Snakes",{-2,256},{"Leg Snake",400,500,540,320})
        	Overworld.StartInstant("Vs. Leg Snakes")
        	legtrigger = 2
        end
    end
    function self.Update()
		--DEBUG(GetCurrentState())
		--if GetCurrentState() == "BEFOREDONE" then
			--Overworld.GotoRoom(3,440,10,0)
		--end
    end
    return self -- Don't remove this line
end

return main() -- Don't remove this line

