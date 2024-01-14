require "Libraries/CYK/Sandboxing/WaveBegin" -- NEEDED FOR CYK TO RUN PROPERLY

-- The bouncing bullets attack from the documentation example.
spawntimer = 0
bullets = { }

function Update()
    spawntimer = spawntimer + 1	
    if spawntimer == 60 then
        local one = CreateProjectile('bullet_dice', 0, 0)
        table.insert(bullets, one)
    end
    if spawntimer == 90 then
    	bullets[1].MoveTo(-50,50)
        local two = CreateProjectile('bullet_dice', 50, -50)
        table.insert(bullets, two)
    end
   	if spawntimer == 120 then
   		bullets[1].MoveTo(50,50)
   		bullets[2].MoveTo(0,0)
        local three = CreateProjectile('bullet_dice', -50, -50)
        table.insert(bullets, three)
    end
   	if spawntimer == 150 then
   		bullets[1].MoveTo(50,50)
   		bullets[2].MoveTo(-50,50)
   		bullets[3].MoveTo(-50,-50)
        local four = CreateProjectile('bullet_dice', 50, -50)
        table.insert(bullets, four)
    end
   	if spawntimer == 180 then
        local five = CreateProjectile('bullet_dice', 0, 0)
        table.insert(bullets, five)
    end
    if spawntimer == 210 then
   		bullets[5].MoveTo(-50,0)
        local six = CreateProjectile('bullet_dice', 50, 0)
        table.insert(bullets, six)
    end
end

--function OnHit()
--    return 3, 1
--end

require "Libraries/CYK/Sandboxing/WaveEnd" -- NEEDED FOR CYK TO RUN PROPERLY