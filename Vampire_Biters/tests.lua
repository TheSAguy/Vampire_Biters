

radius_from_player = 200
spawn_zone = 100

function tester2()
   

   for i = 1, 100 do
    
	--global.Alien.Horde[i] = game.surfaces[1].create_entity({name="alien-army-"..i, position={i, 5},force = game.forces.alien})
	
	

		
		

		local Alien_Spawn_Position = game.surfaces[1].find_non_colliding_position("alien-army-"..i, {i, 5}, 1 , 0.5)
		if Alien_Spawn_Position then
			global.Alien.Horde[i] = game.surfaces[1].create_entity({name="alien-army-"..i, position=Alien_Spawn_Position,force = game.forces.alien})
		else
			global.Alien.Horde[i] = game.surfaces[1].create_entity({name="alien-army-"..i, position={i, 7},force = game.forces.alien})
		end

	end	
		--[[		
    local lord = game.surfaces[1].create_entity({name="alien-army-25",
                                                 position={19, 19},
                                                 force = game.forces.alien})
												 --end
     for i = 1, 100 do
         game.surfaces[1].create_entity({name="alien-army-" .. i,
                                         position={math.random(-50, 50), math.random(-50, 50)},
                                         force = game.forces.alien})
     end
	 
	      for i = 1, 20 do
         game.surfaces[1].create_entity({name="small-alien",
                                         position={math.random(20, 350), math.random(20, 350)},
                                         force = game.forces.alien})
     end
	 
]]	 
    game.surfaces[1].create_entity({name="biter-spawner",
                                    position={25, 25},
                                    force = game.forces.enemy})
    game.surfaces[1].create_entity({name="biter-spawner",
                                    position={30, 30},
                                    force = game.forces.enemy})
    --game.surfaces[1].create_entity({name="biter-spawner", position={35, 35}, force = game.forces.enemy})
    return global.Alien.Horde
end

function Initial_Spawn()

	local Dens_Spawned = 0
	local Scatter = 0
	while Dens_Spawned < 100 do
		
		local surface = game.surfaces[1]
		local plusMin = math.random()
		local pos_x = math.random(-(spawn_zone+Scatter),(spawn_zone+Scatter))
		local pos_y = math.random(-(spawn_zone+Scatter),(spawn_zone+Scatter))
		
		if pos_x < 0 then 
			pos_x = pos_x - radius_from_player
		else
			pos_x = pos_x + radius_from_player
		end
		if pos_y < 0 then 
			pos_y = pos_y - radius_from_player
		else
			pos_y = pos_y + radius_from_player
		end

		
		
		if surface.can_place_entity({ name="alien-den", position={pos_x, pos_y}}) then
			local Alien_Units = surface.create_entity({name="alien-den", position={pos_x, pos_y},force = game.forces.alien})
			
			Dens_Spawned = Dens_Spawned + 1
			Scatter = Scatter + 10
		end
	end
	local surface = game.surfaces[1]
	local Alien_Units = surface.create_entity({name="alien-army-25",
                                                 position={19, 19},
                                                 force = game.forces.alien})
	
    return Alien_Units
end