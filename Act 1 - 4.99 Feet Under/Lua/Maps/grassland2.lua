function main()
    local self
    self = { }
    self.name = "Test Map"
    self.tiles = {
    {"grassland",true}, -- First argument is filename, second is solidity. This tile is non-solid...
    {"road",false}    -- ...while this one is.
    }
    -- Maps should be atleast 16x12
    self.map = {
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,1,1,1,1,2,2,2,1,1,2,2,2,1,1,1,1,1},
        {1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {1,1,1,1,1,2,2,2,2,2,2,2,2,1,1,1,1,1},
        {1,1,1,1,1,1,2,2,2,2,2,2,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1}
    }
    -- Map size should be the amount of tiles horizontally * 40 and vertically * 40, though
    -- this is really just for the camera, so make it whatever.
    -- Uncomment this to set it manually:
    -- self.size = {640,480}
    self.size = {#self.map[1]*40,#self.map*40}
    self.events = {
		{"chris",{340,400}},
		{"grassland2",{280,300}},
		{"grassland2",{300,300}},
		{"grassland2",{320,300}},
		{"grassland2",{340,300}},
		{"grassland2",{360,300}},
		{"grassland2",{380,300}},
		{"grassland2",{400,300}}
    }
    self.scenes = {"testscene"}
    self.outline = "mapfade"
    function self.Update()
    end
    return self
end

return main()