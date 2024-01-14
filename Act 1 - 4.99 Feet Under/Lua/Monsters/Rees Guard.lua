
return function(newENV)
_ENV = newENV

----- DO NOT MODIFY ABOVE -----

-- A basic Enemy Entity script skeleton you can copy and modify for your own creations.
comments = { "Rees Guard belly-drums aggressively.", "Rees Guard examines his belly.", "Rees Guard playfully twirls his spear." }
commands = { "Check", "Talk", "Flirt", "Pose", "Working?" }
randomdialogue = {
    { "Belly..."                     },
    { "Must...fight..."   },
    { "Gabe is...the coolest..."                  },
    { "S-s-sus..." }

}

AddAct("Check", "", 0)

SetActive(false)
sprite = "0"
name = "Rees Guard"
hp = 120
atk = 8
def = 2
dialogbubble = "DRBubble" -- See documentation for what bubbles you have available.
canspare = false
check = "Check message goes here."
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
end

posecount = 0

-- Triggered when a Player uses an Act on this enemy.
-- You don't need an all-caps version of the act commands here.
function HandleCustomCommand(user, command)
    local text = { "" }
    if command == "Check" then
        text = { name .. " - " .. atk .. " ATK " .. def .. " DEF\n" .. check }
	end
end

-- Function called whenever this entity's animation is changed.
-- Make it return true if you want the animation to be changed like normal, otherwise do your own stuff here!
function HandleAnimationChange(newAnim)
    return true
end

----- DO NOT MODIFY BELOW -----
end