function main()
    local self
    self = { }
    self.name = "log37" -- The event name. Possibly unneeded? Leave this in for future things.
    self.speed = 2
    self.hitboxwidth = 400
    self.hitboxheight = 200
    self.sprite = "lab"
    self.timer = 0
    thirty = 1
    function self.OnLoad(map)
        self.sprite.Scale(2,2)
    end
    function self.OnCollide()
    	if thirty == 1 then
        	Scenes.Trigger("log37")
        	thirty = 2
        end
    end
    function self.Update()

    end
    return self -- Don't remove this line
end

return main() -- Don't remove this line

