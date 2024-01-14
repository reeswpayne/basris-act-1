require "Libraries/CYK/Sandboxing/WaveBegin" -- NEEDED FOR CYK TO RUN PROPERLY

-- The bouncing bullets attack from the documentation example.
spawntimer = 0
bullets = { }

function Update()
	spawntimer = spawntimer+1
    local posx = -30
    local posy = Arena.height/2
    if spawntimer == 5 then
    	local bullet = CreateProjectile('bullet_shoveldrop', posx, posy)
    	bullet.SetVar('velx', 3-2*math.random())
    	bullet.SetVar('vely', 0)
    	table.insert(bullets, bullet)
    end

    for i=1,#bullets do
        local bullet = bullets[i]
        local velx = bullet.GetVar('velx')
        local vely = bullet.GetVar('vely')
        local newposx = bullet.x + velx
        local newposy = bullet.y + vely
        if(bullet.x > -Arena.width/2 and bullet.x < Arena.width/2) then
            if(bullet.y < -Arena.height/2 + 8) then
                newposy = -Arena.height/2 + 8
                vely = 8
                velx = -velx
            end
        end
        vely = vely - 0.4
        bullet.MoveTo(newposx, newposy)
        bullet.SetVar('velx',velx)
        bullet.SetVar('vely', vely)
    end
end

--function OnHit()
--    return 3, 1
--end

require "Libraries/CYK/Sandboxing/WaveEnd" -- NEEDED FOR CYK TO RUN PROPERLY