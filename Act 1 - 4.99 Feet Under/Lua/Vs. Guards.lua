require "Libraries/CYK/Util" -- NEEDED FOR CYK TO RUN

encountertext = "Two Rees Guards drew close!" -- Modify as necessary. It will only be read out in the action select screen.

wavetimer = 4
arenasize = { 155, 130 }
arenapos = { 320, 200 }  -- Position of the middle of the bottom of the arena at the start of the next wave.
arenacolor = { 0, 1, 0 } -- Color of the sides of the at the start of the next wave.
arenarotation = 0        -- Rotation of the arena at the start of the wave.
autolinebreak = true     -- Returns the text to the next line if it goes past a text object's boundary.
music = "mus_roadtaken"
Audio.Volume(0.25)

-- List of Players. Each Player added here must have a script with the same name in the mod's Lua/Players folder.
players = {"Monika"}
-- Position of each Player on the screen. It is made of tables with two values.
-- Each table contains an x value and a y value. These values move the bottom left corner of each Player's sprite.
playerpositions = {
    { 100, 256 },
}

-- List of enemies. Each enemy added here must have a script with the same name in the mod's Lua/Monsters folder.
enemies = { "Rees Guard","Rees Guard"}
-- Position of each enemy on the screen. It is made of tables with two values.
-- Each table contains an x value and a y value. These values move the bottom left corner of each enemy's sprite.
enemypositions = {
    { 540, 320 },
    { 580, 200 }

}

-- unescape = false -- Uncomment me to remove the pesky QUITTING text when trying to exit the encounter!

-- Preloads all of CYK's animations to reduce loading times in-game, at the price of an increasing loading time at the start of the encounter
preloadAnimations = true

-- CYK's debug level:
-- 0- = No warning
-- 1  = Important warnings
-- 2  = All warnings
-- 3+ = All debug messages
CYKDebugLevel = 0

-- Characters used to display thie players' UI sprite in the font uidialog
-- Here, I used cyrillic characters as they are not used in English
fontCharUsedForPlayer = { Ben = "Ђ", Seb = "Ѓ", Pichu = "Є", Ieslar = "Љ", KRISP = "Њ", ZOOZIE = "Ћ" }
fontCharUsedForPlayer["2FPEST"] = "Ќ"

background = true     -- Set this variable to false to disable CYK's background
backgroundfade = true -- Set this variable to false to disable the fade effect on the background when entering a wave

-- A custom list with attacks to choose from. Actual selection happens in EnemyDialogueEnding(). Put here in case you want to use it.
possible_attacks = { "guard_spear_up","guard_spear_toss" }
nextwaves = { "guard_spear_up" }


--enemies[1].SetActive(true)
function EncounterStarting()
    -- Add the items one by one then set the player's inventory
    Inventory.AddCustomItem("Cupcake", "Heals 90HP", 0, "Player")
    Inventory.SetInventory({ "Cupcake"})
    
    -- NewAudio.CreateChannel("bgm")
    -- NewAudio.PlayMusic("bgm","mus_battle1",true,1)
end

-- Function called once per frame
function Update() 
	--DEBUG(GetCurrentState())
	if GetCurrentState() == "BEFOREDONE" then
		SetAlMightyGlobal("14clear",1)
	end
end

-- Function called whenever the enemies are about to speak
function EnemyDialogueStarting()
    -- Good location for setting the targets of the enemies
end

-- Function called after the enemies have spoken, before entering a wave
function EnemyDialogueEnding()
    -- Good location for setting the wave which is going to be used in the next enemy attack
    nextwaves = { possible_attacks[math.random(1, #possible_attacks)] }
end

-- Function called after the defense round ends
function DefenseEnding()
	self.grazeSprite.alpha = 0
	encountertext = RandomEncounterText()
	for i = 1, #players do
   		if players[i].hp > 0 then
   			--self.EndArenaAnim(false)
            self.StartArenaAnim(false, true, true)
			Player.sprite.alpha = 1
   			State("ACTIONSELECT",1)
        	break
        end
	end
end

-- Function called whenever a Player spares an enemy
-- Can be called several times per turn
function HandleSpare(player, enemy) end

-- Function called whenever the state of CYK changes
-- Can be called inside itself if State() is called within EnteringState()!
function EnteringState(newstate, oldstate) end

-- This function handles the items' effects!
function HandleItem(user, targets, itemID, itemData)
    if itemID == "Cupcake" then
        targets[1].Heal(90)
        BattleDialog({ targets[1].name .. " ate the Cupcake.[w:10]\nThey regain 90 HP!" })
    end
end

local gameOverCount = 0


function Revive()
    players[1].Heal(players[1].maxhp)
    players[1].hp = 1
    players[1].UpdateUI()
    Audio.Unpause()
end

require "Libraries/CYK/CYKPreProcessing"  -- NEEDED FOR CYK TO RUN