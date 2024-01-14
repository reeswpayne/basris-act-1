
return function(newENV)
_ENV = newENV

----- DO NOT MODIFY ABOVE -----

-- A basic Enemy Entity script skeleton you can copy and modify for your own creations.
comments = { "Lee rolls some dice absentmindedly.", "Lee smiles slyly, then writes down some notes.", "Lee bounces back and forth on his shovel.","Smells like dungeons (but not dragons)." }
commands = { "Check", "Roll", "Load Die"}
randomdialogue = {
	{ "I'm actually happy you guys showed up...","Haven't seen new players in a while."                     },
	{"It's my life's duty to guard this lab!"},
	{"Wanna play some games on the lab tech?"},
	{"For Gabetopia!"},
	{"I must obey the Queen's orders..."}
	
    


}
scripteddialogue = {
    { "I'm actually happy you guys showed up...","Haven't seen new players in a while."                     },
    {"I've spent most of my life guarding the entrance to this lab.","Very few people passed by my post,","so I entertained myself on the computer."},
    {"One day, a strange woman appeared.","She was the first person I'd seen in years."},
    {"..."}
    


}

AddAct("Check", "Reveals enemy's stats", 0)
AddAct("Roll", "Test your luck", 0)
AddAct("Load Die", "Just add salt", 60,{"Pichu"})

SetActive(false)
sprite = "0"
name = "Lee"
hp = 2000
atk = 10
def = 999
dialogbubble = "DRBubble" -- See documentation for what bubbles you have available.
canspare = false
check = "His armor is impenetrable, so he challenges himself with chance games instead of straight fights."
turn = 1
currentdialogue = nil
--self.sprite = "Leg Snake"
--self.SetActive(false)

-- CYK variables
mag = 9001            -- MAGIC stat of the enemy
targetType = "single" -- Specifies how many (or which) target(s) this enemy's bullets will target
tired = false         -- If true, the Player will be able to spare this enemy using the spell "Pacify"

-- Check the "Special Variables" page of the documentation to learn how to modify this mess
animations = {
    Hurt      = { { 0 },                                           1     , { next = "Idle" } },
    Idle      = { { 0 }, 1	 , { }               },
    Spareable = { { 0 }, 1	 , { }               },
}

-- Triggered just before computing an attack on this target
function BeforeDamageCalculation(attacker, damageCoeff)
    -- Good location to set the damage dealt to this enemy using self.SetDamage()
    if damageCoeff > 0 then
        SetDamage(0)
    end
end

-- Triggered when a Player attacks (or misses) this enemy in the ATTACKING state
function HandleAttack(attacker, attackstatus)
    if currentdialogue == nil then

    end

    --if attackstatus == -1 then
        -- Player pressed fight but didn't press Z afterwards

    --else
        -- Player did actually attack
        --if attackstatus < 50 then


        --end
    --end
end

saltcount = 0
roll = 0
tutorial_c = 0

-- Triggered when a Player uses an Act on this enemy.
-- You don't need an all-caps version of the act commands here.
function HandleCustomCommand(user, command)
	if currentdialogue == nil then
        currentdialogue = { }
    end
    local text = { "" }
    if command == "Check" then
    	if tutorial_c == 0 then
        	text = {"Lee - 10 STR 999 AC\nHis armor is impenetrable, so battles aren't a challenge anymore.","He now entertains himself with games of chance instead.","[func:SetFaceSprite,Players.Seb.Scared][voice:v_seb]Whoa, what was that?","[func:SetFaceSprite,Players.Pichu.Normal][voice:v_ralsei]Ben is a dumb human, so he can't use magic like us.","[func:SetFaceSprite,Players.Pichu.Normal][voice:v_ralsei]Instead, he can take different ACTions to influence the battle.","[func:SetFaceSprite,Players.Seb.Scared][voice:v_seb]This is all so weird...I'll follow Ben's lead tho."}
        	tutorial_c = 1

        else
        	text = { "Lee - 10 STR 999 AC\nHis armor is impenetrable, so battles aren't a challenge anymore.","He now entertains himself with games of chance instead." }
        end
    elseif command == "Roll" then
    	if saltcount > 2 then
    		text = {"You roll the d20...","[func:SetFaceSprite,Monsters.Lee.Normal]It's a...natural 20?! Uh, wow. Then I have no choice but to surrender!"}
    		canspare = true
    	else
    		text = {"You roll the d20...","[func:SetFaceSprite,Monsters.Lee.Normal]Hmm, you failed the save. Tough luck.","Seems like rolling won't do much good right now..."}
    	end

	elseif command == "Load Die" then
		saltcount = saltcount + 1
		if saltcount == 1 then
			text = {"Pichu coated the die with some salt. Still not enough to change the probability...","[func:SetFaceSprite,Players.Seb.Normal][voice:v_seb]Bro. What are you even doing?!","[func:SetFaceSprite,Players.Pichu.Normal][voice:v_ralsei]Infusing this die with magical salt.","[func:SetFaceSprite,Players.Seb.Happy][voice:v_seb]Huh. You sure can do a lot with magic.","[func:SetFaceSprite,Players.Pichu.Normal][voice:v_ralsei]True, but there's a limiting factor.","[func:SetFaceSprite,Players.Pichu.Normal][voice:v_ralsei]Using magic requires you to spend TENSION POINTS, or TP for short.","[func:SetFaceSprite,Players.Seb.Happy][voice:v_seb]Can I just call them T? For even shorter.","[func:SetFaceSprite,Players.Pichu.Disappointed][voice:v_ralsei]...whatever.","[func:SetFaceSprite,Players.Pichu.Normal][voice:v_ralsei]You can earn TP by FIGHTing, DEFENDing, or grazing bullets.","[func:SetFaceSprite,Players.Seb.Happy][voice:v_seb]Cool. Let's get that T!"}
		elseif saltcount == 2 then
			text = {"Pichu added some more salt to the die. Almost there!"}
		elseif saltcount == 3 then
			text = {"Pichu finished coating the die with salt. It should be a guaranteed success now!"}
		else
			text = {"Pichu sprinkled more salt on the die, just for fun."}
		end

	end
    BattleDialog(text)
    table.insert(currentdialogue,scripteddialogue[turn])
    if turn < 4 then
    	turn = turn + 1
    end
end

-- Function called whenever this entity's animation is changed.
-- Make it return true if you want the animation to be changed like normal, otherwise do your own stuff here!
function HandleAnimationChange(newAnim)
    return true
end

----- DO NOT MODIFY BELOW -----
end