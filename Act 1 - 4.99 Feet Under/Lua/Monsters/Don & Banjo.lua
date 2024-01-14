
return function(newENV)
_ENV = newENV

----- DO NOT MODIFY ABOVE -----

-- A basic Enemy Entity script skeleton you can copy and modify for your own creations.
comments = { "The flying machine will crash in " ..crash.. " turn(s)!" }
commands = { "Check", "Steer", "Taunt" }
randomdialogue = {
	{"We're mad!"},
	{"Looks like we're still on pace..."},
	{"Silence, soyboys!"},
	{"You're goin up in flames!"}
}

AddAct("Check","Reveals enemy's stats", 0)
AddAct("Steer","Avoids crashes",50)
AddAct("Taunt","Distract the enemy",0)

SetActive(false)
sprite = "0"
name = "Don & Banjo"
hp = 2000
atk = 14
def = 5
dialogbubble = "DRBubble" -- See documentation for what bubbles you have available.
canspare = false
check = "Check message goes here."
--self.sprite = "Leg Snake"
--self.SetActive(false)

players = {"-","Monika"}

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
        --SetDamage(666)
    end
end

-- Triggered when a Player attacks (or misses) this enemy in the ATTACKING state
function HandleAttack(attacker, attackstatus)
    if currentdialogue == nil then
        currentdialogue = { }
    end

    if attackstatus == -1 then
        -- Player pressed fight but didn't press Z afterwards

    else
        -- Player did actually attack
        if attackstatus < 50 then


        end
    end
    --crash = crash - 1

end

posecount = 0
taunt = 0

-- Triggered when a Player uses an Act on this enemy.
-- You don't need an all-caps version of the act commands here.
function HandleCustomCommand(user, command)
    local text = { "" }
    if command == "Check" then
        text = { name .. " - Jiidy ATK Jiidy DEF\nA pair of elite GabeCorp enforcers.","Banjo's wings are all that's keeping them in the air. Take him out and secure your escape."}
	elseif command == "Steer" then
		crash = 3
		text = {"You briefly take control of the flying machine and steer it back on course."}
	elseif command == "Taunt" then
		if taunt == 0 then
			taunt = 1
			text = {"[func:SetFaceSprite,Players.-.Normal]Looks like you're struggling a bit there, Banjo.","[func:SetFaceSprite,Players.-.Normal]Maybe you're past your prime.","[func:SetFaceSprite,Monsters.Don & Banjo.Normal][voice:v_banjo]Hey, don't make me mad! You won't like me when I'm mad!","[func:SetFaceSprite,Monsters.Don & Banjo.Normal][voice:v_banjo]Someone like you, resorting to lame taunts...\nHow the mighty have fallen.","[func:SetFaceSprite,Players.-.Normal]Just making sure you don't get too cocky.","[func:SetFaceSprite,Players.-.Normal]I only need one good shot to clip those wings...","[func:SetFaceSprite,Monsters.Don & Banjo.Normal][voice:v_banjo]Heh...Do your worst!","Banjo let his guard down! ATK and DEF decreased!"}
			atk = 12
			def = 3
		else
			text = {"But there was nothing to say."}
		end
	end
	BattleDialog(text)
end

-- Function called whenever this entity's animation is changed.
-- Make it return true if you want the animation to be changed like normal, otherwise do your own stuff here!
function HandleAnimationChange(newAnim)
    return true
end

----- DO NOT MODIFY BELOW -----
end