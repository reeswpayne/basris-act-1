require "Libraries/CYK/Sandboxing/WaveBegin" -- NEEDED FOR CYK TO RUN PROPERLY

-- The bouncing bullets attack from the documentation example.
spawntimer = 0
bullets = { }

function Update()
    spawntimer = spawntimer + 1	
    if spawntimer%30 == 0 then
    	local posx = math.random(-200,200)
        local posy = math.random(-200,200)
        local bullet = CreateProjectile('bullet_small', posx, posy)
        bullet.SetVar('velx', -3)
        bullet.SetVar('vely', 0)
        table.insert(bullets, bullet)
       	local bullet = CreateProjectile('bullet_small', posx, posy)
        bullet.SetVar('velx', 3)
        bullet.SetVar('vely', 0)
        table.insert(bullets, bullet)
        local bullet = CreateProjectile('bullet_small', posx, posy)
        bullet.SetVar('velx', 0)
        bullet.SetVar('vely', -3)
        table.insert(bullets, bullet)
        local bullet = CreateProjectile('bullet_small', posx, posy)
        bullet.SetVar('velx', 0)
        bullet.SetVar('vely', 3)
        table.insert(bullets, bullet)
        local bullet = CreateProjectile('bullet_small', posx, posy)
        bullet.SetVar('velx', 2)
        bullet.SetVar('vely', math.sqrt(5))
        table.insert(bullets, bullet)
        local bullet = CreateProjectile('bullet_small', posx, posy)
        bullet.SetVar('velx', -2)
        bullet.SetVar('vely', math.sqrt(5))
        table.insert(bullets, bullet)
        local bullet = CreateProjectile('bullet_small', posx, posy)
        bullet.SetVar('velx', -2)
        bullet.SetVar('vely', -math.sqrt(5))
        table.insert(bullets, bullet)
        local bullet = CreateProjectile('bullet_small', posx, posy)
        bullet.SetVar('velx', 2)
        bullet.SetVar('vely', -math.sqrt(5))
        table.insert(bullets, bullet)
    end

    for i=1,#bullets do
        local bullet = bullets[i]
        local velx = bullet.GetVar('velx')
        local vely = bullet.GetVar('vely')
        local newposx = bullet.x + velx
        local newposy = bullet.y + vely
        bullet.MoveTo(newposx, newposy)
    end
end

--function OnHit()
--    return 3, 1
--end

require "Libraries/CYK/Sandboxing/WaveEnd" -- NEEDED FOR CYK TO RUN PROPERLY