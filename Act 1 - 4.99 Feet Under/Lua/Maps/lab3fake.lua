function main()
    local self
    self = { }
    self.name = "lab3"
    music = "mus_hateyou"
    self.tiles = {
    {"black",true}, -- First argument is filename, second is solidity. This tile is non-solid...
    {"lab",false}    -- ...while this one is.
    }
    -- Maps should be atleast 16x12
    self.map = {
        {1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,1,1},
        {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
        {1,1,1,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,1,1,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,1,1,2,2,2,1,1,1,1,2,2,2,2,2,2,2,2},
        {1,1,1,2,2,2,1,1,1,1,2,2,2,2,2,2,2,2},
        {1,1,2,2,2,2,2,1,1,1,2,2,2,2,2,2,2,2},
        {1,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2},
        {1,2,2,2,2,2,2,2,1,1,2,2,2,2,1,1,1,1},
        {1,2,2,2,2,2,2,2,1,1,2,2,2,2,1,1,1,1},
        {1,1,2,2,2,2,2,1,1,1,2,2,2,2,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1,1}
    }
    -- Map size should be the amount of tiles horizontally * 40 and vertically * 40, though
    -- this is really just for the camera, so make it whatever.
    -- Uncomment this to set it manually:
    -- self.size = {640,480}
    self.size = {#self.map[1]*40,#self.map*40}
    self.events = {
		{"pichumeet",{680,600}}
	}

    self.scenes = {"testscene"}
    self.outline = "mapfade"
    function self.Update()
    end
    return self
end

return main()