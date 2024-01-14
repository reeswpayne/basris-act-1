function main()
    local self
    self = { }
    self.name = "lab3"
    self.tiles = {
    {"black",true}, -- First argument is filename, second is solidity. This tile is non-solid...
    {"lab",false}    -- ...while this one is.
    }
    -- Maps should be atleast 16x12
    self.map = {
        {1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1},
        {1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
        {1,1,1,1,1,2,2,2,2,2,2,2,2,1,1,1,1,1},
        {1,1,1,1,1,1,2,2,2,2,2,2,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1},
        {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
        {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
        {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
    }
    -- Map size should be the amount of tiles horizontally * 40 and vertically * 40, though
    -- this is really just for the camera, so make it whatever.
    -- Uncomment this to set it manually:
    -- self.size = {640,480}
    self.size = {#self.map[1]*40,#self.map*40}
    self.events = {
		{"cryopod",{270,560}},
		{"monika",{360,500}},
		{"donovan",{340,400}},
		{"guard",{280,440}},
		{"guard",{360,440}},
		{"banjo",{300,400}},
		{"lab7fake",{0,0}}
	}

    self.scenes = {"testscene"}
    self.outline = "mapfade"
    function self.Update()
    end
    return self
end

return main()