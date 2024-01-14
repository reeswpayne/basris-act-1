function main()
    local self
    self = { }
    self.name = "Test Map"
    self.tiles = {
    {"black",true}, -- First argument is filename, second is solidity. This tile is non-solid...
    {"lab",false}    -- ...while this one is.
    }
    -- Maps should be atleast 16x12
    self.map = {
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1,1},
        {1,1,2,2,2,1,1,1,1,1,2,2,2,2,1,1,1,1},
        {1,2,2,2,2,2,1,1,1,1,2,2,2,2,1,1,1,1},
        {2,2,2,2,2,2,2,1,1,1,2,2,2,2,1,1,1,1},
        {2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {2,2,2,2,2,2,2,1,1,1,2,2,2,2,1,1,1,1},
        {1,2,2,2,2,2,1,1,1,1,2,2,2,2,1,1,1,1},
        {1,1,2,2,2,1,1,1,1,1,2,2,2,2,1,1,1,1},
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
		{"log02",{400,200}},
		{"log02",{440,200}},
		{"log02",{480,200}},
		{"log02",{520,200}},
		{"testleg01",{120,320}},
		{"log37",{400,500}},
		{"log37",{440,500}},
		{"log37",{480,500}},
		{"log37",{520,500}},
		{"lab2door",{680,520}},
		{"lab2door",{680,560}},
		{"lab2door",{680,600}},
		{"lab2door",{680,640}}
		
	}

    self.scenes = {"testscene"}
    self.outline = "mapfade"
    function self.Update()
    end
    return self
end

return main()