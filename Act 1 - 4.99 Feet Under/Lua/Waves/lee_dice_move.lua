require "Libraries/CYK/Sandboxing/WaveBegin" -- NEEDED FOR CYK TO RUN PROPERLY

-- The bouncing bullets attack from the documentation example.
spawntimer = 0
bullets = { }

function Update()
    spawntimer = spawntimer + 1	
    if spawntimer == 60 then
        local one = CreateProjectile('bullet_dice', 0, 0)
        one.SetVar('velx', 0)
        one.SetVar('vely', -1)
        table.insert(bullets, one)
    end
    if spawntimer > 60 and spawntimer < 120 then
    	for i = 1,#bullets do
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
    if spawntimer == 120 then
    	bullets[1].MoveTo(-50,50)
        local two = CreateProjectile('bullet_dice', 50, -50)
        two.SetVar('velx', -1)
        two.SetVar('vely', 0)
        table.insert(bullets, two)
    end
    if spawntimer > 120 and spawntimer < 180 then
    	for i = 1,#bullets do
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
   	if spawntimer == 180 then
   		bullets[1].MoveTo(50,50)
   		bullets[2].MoveTo(0,0)
        local three = CreateProjectile('bullet_dice', -50, -50)
        table.insert(bullets, three)
    end
   	if spawntimer == 210 then
   		bullets[1].MoveTo(50,50)
   		bullets[2].MoveTo(-50,50)
   		bullets[3].MoveTo(-50,-50)
        local four = CreateProjectile('bullet_dice', 50, -50)
        table.insert(bullets, four)
    end
   	if spawntimer == 240 then
        local five = CreateProjectile('bullet_dice', 0, 0)
        table.insert(bullets, five)
    end
    if spawntimer == 270 then
   		bullets[5].MoveTo(-50,0)
        local six = CreateProjectile('bullet_dice', 50, 0)
        table.insert(bullets, six)
    end
end

--function OnHit()
--    return 3, 1
--end

require "Libraries/CYK/Sandboxing/WaveEnd" -- NEEDED FOR CYK TO RUN PROPERLY