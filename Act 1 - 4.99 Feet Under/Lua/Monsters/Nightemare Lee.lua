
return function(newENV)
_ENV = newENV

----- DO NOT MODIFY ABOVE -----

-- A basic Enemy Entity script skeleton you can copy and modify for your own creations.
comments = { "You fall yet deeper into the lab.", "You try to comprehend the beast before you.", "You feel sick to your stomach.","Smells like dragons (finally)." }
commands = { "Check", "Feed", "X-Feed"}
randomdialogue = {

}


AddAct("Check", "Reveals enemy's stats", 0)
AddAct("Feed", "Just add salt", 20,{"Pichu"})
AddAct("X-Feed", "Power of teamwork!", 60,{"Seb","Pichu"})

SetActive(false)
sprite = "0"
name = "Nightemare Lee"
hp = 3000
atk = 12
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
		currentdialogue = { }
    end

    --if attackstatus == -1 then
        -- Player pressed fight but didn't press Z afterwards

    --else
        -- Player did actually attack
        --if attackstatus < 50 then


        --end
    --end
end

salt = 0

-- Triggered when a Player uses an Act on this enemy.
-- You don't need an all-caps version of the act commands here.
function HandleCustomCommand(user, command)

    local text = { "" }
    if command == "Check" then
        text = {"Nightemare Lee - 12 ATK 999 DEF\nInfusing Lee with the Rees genome has created a mindless beast.","His indomitable belly is impervious to attack."}
    elseif command == "Feed" then
    	salt  = salt + 5
		text = {"Pichu fed Lee some salt.  His belly is at "..salt.."% capacity!"}
	
	elseif command == "X-Feed" then
		salt = salt + 10
		text = {"Sebastian restrained Lee so Pichu could stuff him full of salt!  Lee's belly is at "..salt.."% capacity!"}
	end
	if salt > 99 then
		canspare = true
	end
    BattleDialog(text)

end

-- Function called whenever this entity's animation is changed.
-- Make it return true if you want the animation to be changed like normal, otherwise do your ow stuff here!
function HandleAnimationChange(newAnim)
    return true
end

----- DO NOT MODIFY BELOW -----
end