require "Libraries/CYK/Sandboxing/WaveBegin" -- NEEDED FOR CYK TO RUN PROPERLY

-- You've seen this one in the trailer (if you've seen the trailer).
spawntimer = 0
bullets = { }
yOffset = 90
mult = 0.5

function Update()

    spawntimer = spawntimer + 1
    if spawntimer == 1 then
        local numbullets = 8
        for i = 1, numbullets + 1 do
            local bullet = CreateProjectile('bullet_bubble', (i-5.3)*20, math.sin(1/math.pi*i)*60)
            bullet.SetVar("velx",0)
            bullet.SetVar("vely",0)
            table.insert(bullets, bullet)
        end
        for i = 1, numbullets + 1 do
            local bullet = CreateProjectile('bullet_bubble', (i-5.3)*20, math.sin(1/math.pi*i)*-60)
            bullet.SetVar("velx",0)
            bullet.SetVar("vely",0)
            table.insert(bullets, bullet)
        end
    end
    if spawntimer == 30 then
		for i = 1, 4 do
			local bullet = CreateProjectile('bullet_feather_topright',((i-1)*40)+40,110)
			bullet.SetVar('velx',-2)
			bullet.SetVar('vely',-3)
			table.insert(bullets, bullet)
		end
    end
    if spawntimer == 80 then
		for i = 1, 4 do
			local bullet = CreateProjectile('bullet_feather_topleft',((i-1)*-40)-40,110)
			bullet.SetVar('velx',2)
			bullet.SetVar('vely',-3)
			table.insert(bullets, bullet)
		end
    end
   	if spawntimer == 130 then
		for i = 1, 4 do
			local bullet = CreateProjectile('bullet_feather_bottomleft',((i-1)*-40)-40,-110)
			bullet.SetVar('velx',2)
			bullet.SetVar('vely',3)
			table.insert(bullets, bullet)
		end
    end
    if spawntimer == 180 then
		for i = 1, 4 do
			local bullet = CreateProjectile('bullet_feather_bottomright',((i-1)*40)+40,-110)
			bullet.SetVar('velx',-2)
			bullet.SetVar('vely',3)
			table.insert(bullets, bullet)
		end
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

--function OnHit()
--    return "-50%"
--end

require "Libraries/CYK/Sandboxing/WaveEnd" -- NEEDED FOR CYK TO RUN PROPERLY