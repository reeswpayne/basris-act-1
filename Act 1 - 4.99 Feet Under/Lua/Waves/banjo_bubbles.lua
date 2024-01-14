require "Libraries/CYK/Sandboxing/WaveBegin" -- NEEDED FOR CYK TO RUN PROPERLY

-- You've seen this one in the trailer (if you've seen the trailer).
spawntimer = 0
bullets = { }
yOffset = 180
mult = 0.5
playerx = 0
playery = 0
isshovel = 0
isslash = 0
movement = false

function Update()
	--handle movement
	movement = false 
	if playerx != Player.x or playery != Player.y then 
 		movement = true 
	end
	playerx = Player.x
	playery = Player.y
    spawntimer = spawntimer + 1
    --create dirt
    if spawntimer % 30 == 0 then
        local numbullets = 1
        for i = 1, numbullets + 1 do
            local bullet = CreateProjectile('bullet_bubble', math.random(100,200), -200)
            bullet.SetVar('velx', -(3-2*math.random()))
    		bullet.SetVar('vely', 1/(6.5-1.5*math.random()))
    		bullet.SetVar('ColData',0)
            table.insert(bullets, bullet)
        end
        local numbullets = 1
        for i = 1, numbullets + 1 do
            local bullet = CreateProjectile('bullet_bubble', math.random(200,300), -200)
            bullet.SetVar('velx', -(3-2*math.random()))
    		bullet.SetVar('vely', 1/(6.5-1.5*math.random()))
    		bullet.SetVar('ColData',0)
            table.insert(bullets, bullet)
        end
    end
    for i = 1, #bullets do
    	local bullet = bullets[i]
    	local color = bullet.GetVar("ColData")
    	if color == 0 then
        	local velx = bullet.GetVar('velx')
        	local vely = bullet.GetVar('vely')
        	local newposx = bullet.x + velx
        	local newposy = bullet.y + vely
        	vely = vely + 0.08
        	bullet.MoveTo(newposx, newposy)
        	bullet.SetVar('velx',velx)
        	bullet.SetVar('vely', vely)
        end
    end    
end

--function OnHit(bullet)

--end

require "Libraries/CYK/Sandboxing/WaveEnd" -- NEEDED FOR CYK TO RUN PROPERLY