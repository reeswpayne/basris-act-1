function main()
    local self
    self = { }
    self.name = "Tree" -- The event name. Possibly unneeded? Leave this in for future things.
    self.speed = 2
    self.hitboxwidth = 400
    self.hitboxheight = 200
    self.sprite = "uaebe_big"
    
    function self.OnLoad(map) end
    function self.Update() end
    return self -- Don't remove this line
end
return main() -- Don't remove this line