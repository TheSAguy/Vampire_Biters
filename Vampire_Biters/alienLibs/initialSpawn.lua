local waterTiles =
{
  ["deepwater"] = true,
  ["deepwater-green"] = true,
  ["water"] = true,
  ["water-green"] = true
}




function Initial_Spawn(surface)

	local spawn_zone = 100
	local Dens_Spawned = 0
	local Scatter = 0
	local chart_radius = 10
	local radius_from_player = settings.startup["Alien_Distance"].value
	
	while Dens_Spawned < settings.startup["Alien_Count"].value do
		
		local surface = surface
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

		
		
		--local currentTilename = game.surfaces[1].get_tile(pos_x,pos_y).name
		
		if surface.can_place_entity({ name="alien-army-26", position={pos_x, pos_y}, force = game.forces.alien}) then --and not waterTiles[currentTilename] then
					
			local lords = surface.create_entity({name="alien-army-26", position={pos_x, pos_y},force = game.forces.alien})	
			
			for _,force in pairs( game.forces )do
				force.chart( surface, {{x = pos_x - chart_radius, y = pos_y - chart_radius}, {x = pos_x, y = pos_y}})
			end			
			
			Dens_Spawned = Dens_Spawned + 1
			Scatter = Scatter + 100
		else 
		
			Dens_Spawned = Dens_Spawned
			
		end
		
	end

	
    return lords
end


---------- Test Stuff  ----------------

function tester2(surface)
   

   for i = 1, 100 do
    
	--global.Alien.Horde[i] = surface.create_entity({name="alien-army-"..i, position={i, 5},force = game.forces.alien})
	
			

		local Alien_Spawn_Position = surface.find_non_colliding_position("alien-army-"..i, {i, 5}, 1 , 0.5)
		if Alien_Spawn_Position then
			local lords = surface.create_entity({name="alien-army-"..i, position=Alien_Spawn_Position,force = game.forces.alien})
		else
			local lords = surface.create_entity({name="alien-army-"..i, position={i, 7},force = game.forces.alien})
		end

	end	
		--[[		
    local lord = surface.create_entity({name="alien-army-25",
                                                 position={19, 19},
                                                 force = game.forces.alien})
												 --end
     for i = 1, 100 do
         surface.create_entity({name="alien-army-" .. i,
                                         position={math.random(-50, 50), math.random(-50, 50)},
                                         force = game.forces.alien})
     end
	 
	      for i = 1, 20 do
         surface.create_entity({name="small-alien",
                                         position={math.random(20, 350), math.random(20, 350)},
                                         force = game.forces.alien})
     end
	 
]]	 
	surface.create_entity({name="biter-spawner", position={25, 25},force = game.forces.enemy})
	surface.create_entity({name="biter-spawner", position={30, 30},force = game.forces.enemy})
	surface.create_entity({name="biter-spawner", position={35, 35},force = game.forces.enemy})
	surface.create_entity({name="biter-spawner", position={40, 40},force = game.forces.enemy})
	for i = 1, 100 do
		surface.create_entity({name="big-biter", position={i+40, 40},force = game.forces.enemy})
	end
	
    return lords
end
