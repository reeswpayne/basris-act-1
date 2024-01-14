require "Libraries/CYK/Util" -- NEEDED FOR CYK TO RUN


encountertext = "Nightemare Lee appears!"

wavetimer = 4
arenasize = { 155, 130 }
arenapos = { 320, 200 }  -- Position of the middle of the bottom of the arena at the start of the next wave.
arenacolor = { 0, 1, 0 } -- Color of the sides of the at the start of the next wave.
arenarotation = 0        -- Rotation of the arena at the start of the wave.
autolinebreak = true     -- Returns the text to the next line if it goes past a text object's boundary.
music = "mus_chungus"
Audio.Volume(0.5)


-- List of Players. Each Player added here must have a script with the same name in the mod's Lua/Players folder.
players = {"Ben","Seb","Pichu"}
-- Position of each Player on the screen. It is made of tables with two values.
-- Each table contains an x value and a y value. These values move the bottom left corner of each Player's sprite.
playerpositions = {
    { 60, 350 },
    { -2, 256 },
    { 60, 174 }
}

-- List of enemies. Each enemy added here must have a script with the same name in the mod's Lua/Monsters folder.
enemies = { "Nightemare Lee"}
-- Position of each enemy on the screen. It is made of tables with two values.
-- Each table contains an x value and a y value. These values move the bottom left corner of each enemy's sprite.
enemypositions = {
    { 420, 150 }
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
possible_attacks = {"lee_chargeslash","lee_d4","lee_dice","lee_dice_move","lee_digslash","lee_digslash_blue","lee_digslash_orange","lee_shoveldrop","lee_bouncy" }
nextwaves = { "lee_chargeslash" }


--enemies[1].SetActive(true)
function EncounterStarting()
    -- Add the items one by one then set the player's inventory
    Inventory.AddCustomItem("Gamer Flask", "Heals 50HP", 0, "Player")
    Inventory.AddCustomItem("Y. Cabbage", "Heals 35HP to Team.", 0, "AllPlayer")
    Inventory.AddCustomItem("Katana", "Throwable Weapon\nDeals 99HP", 0, "Enemy")
    Inventory.AddCustomItem("Falafel", "Heals 90HP", 0, "Player")

    Inventory.SetInventory({ "Gamer Flask", "Y. Cabbage", "Katana","Falafel"})
    
    -- NewAudio.CreateChannel("bgm")
    -- NewAudio.PlayMusic("bgm","mus_battle1",true,1)
end

-- Function called once per frame
function Update() 
	--DEBUG(GetCurrentState())
	if GetCurrentState() == "BEFOREDONE" then
		SetAlMightyGlobal("13clear",1)
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
			if players[1].hp > -12 then
   				State("ACTIONSELECT",1)
   			elseif players[2].hp > -14 then
   				State("ACTIONSELECT",2)
   			else
   				State("ACTIONSELECT",i)
   			end
        	break
        end
	end
end

-- Function called whenever a Player spares an enemy
-- Can be called several times per turn
function HandleSpare(player, enemy) end

-- Function called whenever the state of CYK changes
-- Can be called inside itself if State() is called within EnteringState()!

function EnteringState(newstate, oldstate) 
end

-- This function handles the items' effects!
function HandleItem(user, targets, itemID, itemData)
    if itemID == "Gamer Flask" then
        targets[1].Heal(50)
        BattleDialog({ targets[1].name .. " drank some Gamer Juice(TM).[w:10]\nThey regain 50 HP!" })
    elseif itemID == "Y. Cabbage" then
        for i = 1, #targets do
            targets[i].Heal(35)
        end
        BattleDialog({"Used the Yisraeli Cabbage.[w:10]\nEveryone regains 35 HP!"})
    elseif itemID == "Katana" then
        targets[1].Hurt(99, user)
        BattleDialog({ user.name .. " threw the Katana at " .. targets[1].name .. "!"})
    elseif itemID == "Falafel" then
        targets[1].Heal(90)
        BattleDialog({ targets[1].name .. " ate the Falafel.[w:10]\nThey regain 90 HP!" })
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