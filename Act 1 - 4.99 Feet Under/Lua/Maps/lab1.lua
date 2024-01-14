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
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1,1},
        {1,1,1,2,2,2,1,1,1,1,2,2,2,2,1,1,1,1},
        {1,1,2,2,2,2,2,1,1,1,2,2,2,2,1,1,1,1},
        {1,2,2,2,2,2,2,2,1,1,2,2,2,2,1,1,1,1},
        {1,2,2,2,2,2,2,2,2,1,2,2,2,2,1,1,1,1},
        {1,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {1,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {1,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {1,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {1,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {1,1,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {1,1,1,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
    }
    -- Map size should be the amount of tiles horizontally * 40 and vertically * 40, though
    -- this is really just for the camera, so make it whatever.
    -- Uncomment this to set it manually:
    -- self.size = {640,480}
    self.size = {#self.map[1]*40,#self.map*40}
    self.events = {
		{"lab01",{0,0}},
		{"log01",{480,400}},
		{"log01",{400,400}},
		{"log01",{440,400}},
		{"log01",{520,400}},
		{"lab1door",{520,720}},
		{"lab1door",{400,720}},
		{"lab1door",{440,720}},
		{"lab1door",{480,720}}
    }
    self.scenes = {"testscene"}
    self.outline = "mapfade"
    function self.Update()
    end
    return self
end

return main()