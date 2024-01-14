-- A basic overworld script skeleton you can copy and modify for your own creations.

if GetAlMightyGlobal("13clear") ~= 1 then
	error("This scene is locked.  Complete the previous scene to unlock it!")
end

attachedtoplayer = false
music = "mus_shinrawave"
intro = 1

enemies = {} -- Populate this with enemies your encounters need!
-- Note that encounters do require a bit of changing, since the enemies table is never read more than
-- once. You can get around this by filling in the enemies table above, and calling SetActive in your
-- enemy encounter!
enemypositions = {}


players = {"Chris"} -- The party. Currently only the first one is used. Party support soon, maybe?

function OverworldStarting()
    -- Do something here! This is called after the Overworld module is initialized.
end

function Update()
    --  The Update() function! This gets ran every frame.
    OWCamera.Update()
    OWUI.Update()
    Scenes.Update()
    Overworld.Update()
	
end

maps = {"prelab5","lab5","lab5real","lab6","lab7","lab7fake"} -- The maps to load! Leave out the .lua extension.

startmap = 1 -- This is the map that gets loaded first. Use Overworld.gotoroom() to switch to a
             -- different one!


function OnHit(bullet) -- Since we can't replace Player.Hurt(), we have to use a different function.
    if not Player.isHurting then
        Overworld.Hurt(10)
    end
end


Pre       = require("Libraries/PreOverworld" )  -- Required for MEOW
OWCamera  = require("Libraries/OWCamera"     )  -- Required for MEOW
OWUI      = require("Libraries/OWUI"         )  -- Required for MEOW
Scenes    = require("Libraries/Scenes"       )  -- Required for MEOW
Overworld = require("Libraries/Overworld"    )  -- MEOW