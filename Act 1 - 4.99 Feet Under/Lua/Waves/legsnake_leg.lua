require "Libraries/CYK/Sandboxing/WaveBegin" -- NEEDED FOR CYK TO RUN PROPERLY

-- The chasing attack from the documentation example.
spawntimer = 0
chasingbullet = CreateProjectile('bullet_leg', Arena.width/2, Arena.height)
chasingbullet.SetVar('xspeed', 0)
chasingbullet.SetVar('yspeed', 0)

function Update()
	spawntimer = spawntimer + 1
	local xdifference = Player.x - chasingbullet.x
   	local ydifference = Player.y - chasingbullet.y
    local xspeed = chasingbullet.GetVar('xspeed') / 2 + xdifference / 100
    local yspeed = 0
	if spawntimer <= 120 then
    	chasingbullet.Move(xspeed, yspeed)
    	chasingbullet.SetVar('xspeed', xspeed)
    	chasingbullet.SetVar('yspeed', yspeed)
    else
    	chasingbullet.setVar('xspeed', 0)
    	chasingbullet.setVar('yspeed', chasingbullet.y-100)
    	chasingbullet.MoveTo(chasingbullet.x, yspeed)
    	chasingbullet.SetVar('xspeed', xspeed)
    	chasingbullet.SetVar('yspeed', yspeed)
   	end
end

--function OnHit()
--    return "150%", 2
--end

require "Libraries/CYK/Sandboxing/WaveEnd" -- NEEDED FOR CYK TO RUN PROPERLY