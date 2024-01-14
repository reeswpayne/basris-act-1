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
col1 = math.floor(math.random(1,2))
col2 = math.floor(math.random(1,2))
col3 = math.floor(math.random(1,2))
col4 = math.floor(math.random(1,2))
colors = {col1,col2,col3,col4}
numbullets = 4
for i = 1,numbullets do
	if colors[i] == 1 then
		local shovel = CreateProjectile('bullet_shovel_orange',-80 + (i*40),120)
       	shovel.SetVar('velx',0)
        shovel.SetVar('vely',0)
    	shovel.SetVar('ColData',1)
    	table.insert(bullets,shovel)
	else
		local shovel = CreateProjectile('bullet_shovel_blue',-80 + (i*40),120)
       	shovel.SetVar('velx',0)
        shovel.SetVar('vely',0)
    	shovel.SetVar('ColData',2)
    	table.insert(bullets,shovel)
	end
end

function Update()
	--handle movement
	movement = false 
	if playerx != Player.x or playery != Player.y then 
 		movement = true 
	end
	playerx = Player.x
	playery = Player.y
    spawntimer = spawntimer + 1
	if spawntimer == 60 then
		if colors[1] == 1 then
    		local slash = CreateProjectile('bullet_chargeslash_orange',200,-20)
    		slash.SetVar('velx',-10)
    		slash.SetVar('vely',0)
    		slash.SetVar('ColData',1)
    		table.insert(bullets,slash)
    	else
    		local slash = CreateProjectile('bullet_chargeslash_blue',200,-20)
    		slash.SetVar('velx',-10)
    		slash.SetVar('vely',0)
    		slash.SetVar('ColData',2)
    		table.insert(bullets,slash)
    	end
    end
	if spawntimer == 90 then
		if colors[2] == 1 then
    		local slash = CreateProjectile('bullet_chargeslash_orange',200,-20)
    		slash.SetVar('velx',-10)
    		slash.SetVar('vely',0)
    		slash.SetVar('ColData',1)
    		table.insert(bullets,slash)
    	else
    		local slash = CreateProjectile('bullet_chargeslash_blue',200,-20)
    		slash.SetVar('velx',-10)
    		slash.SetVar('vely',0)
    		slash.SetVar('ColData',2)
    		table.insert(bullets,slash)
    	end
    end
	if spawntimer == 120 then
		if colors[3] == 1 then
    		local slash = CreateProjectile('bullet_chargeslash_orange',200,-20)
    		slash.SetVar('velx',-10)
    		slash.SetVar('vely',0)
    		slash.SetVar('ColData',1)
    		table.insert(bullets,slash)
    	else
    		local slash = CreateProjectile('bullet_chargeslash_blue',200,-20)
    		slash.SetVar('velx',-10)
    		slash.SetVar('vely',0)
    		slash.SetVar('ColData',2)
    		table.insert(bullets,slash)
    	end
    end
	if spawntimer == 150 then
		if colors[4] == 1 then
    		local slash = CreateProjectile('bullet_chargeslash_orange',200,-20)
    		slash.SetVar('velx',-10)
    		slash.SetVar('vely',0)
    		slash.SetVar('ColData',1)
    		table.insert(bullets,slash)
    	else
    		local slash = CreateProjectile('bullet_chargeslash_blue',200,-20)
    		slash.SetVar('velx',-10)
    		slash.SetVar('vely',0)
    		slash.SetVar('ColData',2)
    		table.insert(bullets,slash)
    	end
    end
    if spawntimer == 180 then
    	EndWave()
    end

    for i = 1, #bullets do
    	local bullet = bullets[i]
        local velx = bullet.GetVar('velx')
        local vely = bullet.GetVar('vely')
        local newposx = bullet.x + velx
        local newposy = bullet.y + vely
        bullet.MoveTo(newposx, newposy)
        bullet.SetVar('velx',velx)
        bullet.SetVar('vely', vely)
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