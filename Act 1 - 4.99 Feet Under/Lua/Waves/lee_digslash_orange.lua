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
    if spawntimer % 30 == 0  and spawntimer < 180 then
        local numbullets = 5
        for i = 1, numbullets + 1 do
            local bullet = CreateProjectile('bullet_small', 200, -80)
            bullet.SetVar('velx', -(3-2*math.random()))
    		bullet.SetVar('vely', 6.5-1.5*math.random())
    		bullet.SetVar('ColData',0)
            table.insert(bullets, bullet)
        end
        --create shovel
        if isshovel == 0 then
        	local shovel = CreateProjectile('bullet_shovel_orange',200,-80)
        	shovel.SetVar('velx',0)
        	shovel.SetVar('vely',0)
    		shovel.SetVar('ColData',1)
    		table.insert(bullets,shovel)
    		isshovel = 1
    	end
    end
    --move dirt
	if spawntimer < 220 then
    	for i = 1, #bullets do
    		local bullet = bullets[i]
    		local color = bullet.GetVar("ColData")
    		if color == 0 then
        		local velx = bullet.GetVar('velx')
        		local vely = bullet.GetVar('vely')
        		local newposx = bullet.x + velx
        		local newposy = bullet.y + vely
        		vely = vely - 0.1
        		bullet.MoveTo(newposx, newposy)
        		bullet.SetVar('velx',velx)
        		bullet.SetVar('vely', vely)
        	end
    	end
   	end
   	--handle charge slash
    if spawntimer > 180 then
    	if isslash == 0 then
    		local slash = CreateProjectile('bullet_chargeslash_orange',200,-20)
    		slash.SetVar('velx',-10)
    		slash.SetVar('vely',0)
    		slash.SetVar('ColData',1)
    		table.insert(bullets,slash)
    		isslash = 1
    	end
    	for i = 1, #bullets do
    		local bullet = bullets[i]
    		local color = bullet.GetVar("ColData")
    		if color == 1 then
        		local velx = bullet.GetVar('velx')
        		local vely = bullet.GetVar('vely')
        		local newposx = bullet.x + velx
        		local newposy = bullet.y + vely
        		bullet.MoveTo(newposx, newposy)
        		bullet.SetVar('velx',velx)
        		bullet.SetVar('vely', vely)
        	end
        end
    end
    
    
    
end

function OnHit(bullet)
	  local color = bullet.GetVar("ColData")
      if color == 1 and not movement then
           return 45
      elseif color == 2 and movement then
           return 45
      elseif color == 0 then
      	return 45
      end
end

require "Libraries/CYK/Sandboxing/WaveEnd" -- NEEDED FOR CYK TO RUN PROPERLY