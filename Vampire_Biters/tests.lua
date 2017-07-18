local waterTiles =
{
  ["deepwater"] = true,
  ["deepwater-green"] = true,
  ["water"] = true,
  ["water-green"] = true
}

radius_from_player = 250
spawn_zone = 100

function tester2()
   

   for i = 1, 100 do
    
	--global.Alien.Horde[i] = game.surfaces[1].create_entity({name="alien-army-"..i, position={i, 5},force = game.forces.alien})
	
	

		
		

		local Alien_Spawn_Position = game.surfaces[1].find_non_colliding_position("alien-army-"..i, {i, 5}, 1 , 0.5)
		if Alien_Spawn_Position then
			local lords = game.surfaces[1].create_entity({name="alien-army-"..i, position=Alien_Spawn_Position,force = game.forces.alien})
		else
			local lords = game.surfaces[1].create_entity({name="alien-army-"..i, position={i, 7},force = game.forces.alien})
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
	game.surfaces[1].create_entity({name="biter-spawner", position={25, 25},force = game.forces.enemy})
	game.surfaces[1].create_entity({name="biter-spawner", position={30, 30},force = game.forces.enemy})
	game.surfaces[1].create_entity({name="biter-spawner", position={35, 35},force = game.forces.enemy})
	game.surfaces[1].create_entity({name="biter-spawner", position={40, 40},force = game.forces.enemy})
	for i = 1, 100 do
		game.surfaces[1].create_entity({name="big-biter", position={i+40, 40},force = game.forces.enemy})
	end
	
    return lords
end

function Initial_Spawn()

	local Dens_Spawned = 0
	local Scatter = 0
	local chart_radius = 10
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

		
		local currentTilename = surface.get_tile(pos_x, pos_y).name
		
		if surface.can_place_entity({ name="alien-army-26", position={pos_x, pos_y}}) and not waterTiles[currentTilename] then
			local lords = surface.create_entity({name="alien-army-26", position={pos_x, pos_y},force = game.forces.alien})
			
			--create_entity.force.chart(surface, {{event.created_entity.position.x - chart_radius, event.created_entity.position.y - chart_radius}, {event.created_entity.position.x + chart_radius, event.created_entity.position.y + chart_radius}}) 
			for _,force in pairs( game.forces )do
			force.chart( surface, {{x = pos_x - chart_radius, y = pos_y - chart_radius}, {x = pos_x, y = pos_y}})
			end
			
			Dens_Spawned = Dens_Spawned + 1
			Scatter = Scatter + 100
		end
	end

	
    return lords
end