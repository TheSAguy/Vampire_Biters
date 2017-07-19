
require "alienUtils"



-- Upgrade Elegable
local ValidUpgrade = 
{

["alien-army-1"] = true,
["alien-army-2"] = true,
["alien-army-3"] = true,
["alien-army-4"] = true,
["alien-army-5"] = true,
["alien-army-6"] = true,
["alien-army-7"] = true,
["alien-army-8"] = true,
["alien-army-9"] = true,
["alien-army-10"] = true,
["alien-army-11"] = true,
["alien-army-12"] = true,
["alien-army-13"] = true,
["alien-army-14"] = true,
["alien-army-15"] = true,
["alien-army-16"] = true,
["alien-army-17"] = true,
["alien-army-18"] = true,
["alien-army-19"] = true,
["alien-army-20"] = true,
["alien-army-21"] = true,
["alien-army-22"] = true,
["alien-army-23"] = true,
["alien-army-24"] = true,
["alien-army-25"] = true,
["alien-army-26"] = true,
["alien-army-27"] = true,
["alien-army-28"] = true,
["alien-army-29"] = true,
["alien-army-30"] = true,
["alien-army-31"] = true,
["alien-army-32"] = true,
["alien-army-33"] = true,
["alien-army-34"] = true,
["alien-army-35"] = true,
["alien-army-36"] = true,
["alien-army-37"] = true,
["alien-army-38"] = true,
["alien-army-39"] = true,
["alien-army-40"] = true,
["alien-army-41"] = true,
["alien-army-42"] = true,
["alien-army-43"] = true,
["alien-army-44"] = true,
["alien-army-45"] = true,
["alien-army-46"] = true,
["alien-army-47"] = true,
["alien-army-48"] = true,
["alien-army-49"] = true,
["alien-army-50"] = true,
["alien-army-51"] = true,
["alien-army-52"] = true,
["alien-army-53"] = true,
["alien-army-54"] = true,
["alien-army-55"] = true,
["alien-army-56"] = true,
["alien-army-57"] = true,
["alien-army-58"] = true,
["alien-army-59"] = true,
["alien-army-60"] = true,
["alien-army-61"] = true,
["alien-army-62"] = true,
["alien-army-63"] = true,
["alien-army-64"] = true,
["alien-army-65"] = true,
["alien-army-66"] = true,
["alien-army-67"] = true,
["alien-army-68"] = true,
["alien-army-69"] = true,
["alien-army-70"] = true,
["alien-army-71"] = true,
["alien-army-72"] = true,
["alien-army-73"] = true,
["alien-army-74"] = true,
["alien-army-75"] = true,
["alien-army-76"] = true,
["alien-army-77"] = true,
["alien-army-78"] = true,
["alien-army-79"] = true,
["alien-army-80"] = true,
["alien-army-81"] = true,
["alien-army-82"] = true,
["alien-army-83"] = true,
["alien-army-84"] = true,
["alien-army-85"] = true,
["alien-army-86"] = true,
["alien-army-87"] = true,
["alien-army-88"] = true,
["alien-army-89"] = true,
["alien-army-90"] = true,
["alien-army-91"] = true,
["alien-army-92"] = true,
["alien-army-93"] = true,
["alien-army-94"] = true,
["alien-army-95"] = true,
["alien-army-96"] = true,
["alien-army-97"] = true,
["alien-army-98"] = true,
["alien-army-99"] = true

}


local Alien_Upgrade_from_killing_Units = 
{

["alien-army-1"] = "alien-army-2",
["alien-army-2"] = "alien-army-3",
["alien-army-3"] = "alien-army-4",
["alien-army-4"] = "alien-army-5",
["alien-army-5"] = "alien-army-6",
["alien-army-6"] = "alien-army-7",
["alien-army-7"] = "alien-army-8",
["alien-army-8"] = "alien-army-9",
["alien-army-9"] = "alien-army-10",
["alien-army-10"] = "alien-army-11",
["alien-army-11"] = "alien-army-12",
["alien-army-12"] = "alien-army-13",
["alien-army-13"] = "alien-army-14",
["alien-army-14"] = "alien-army-15",
["alien-army-15"] = "alien-army-16",
["alien-army-16"] = "alien-army-17",
["alien-army-17"] = "alien-army-18",
["alien-army-18"] = "alien-army-19",
["alien-army-19"] = "alien-army-20",
["alien-army-20"] = "alien-army-21",
["alien-army-21"] = "alien-army-22",
["alien-army-22"] = "alien-army-23",
["alien-army-23"] = "alien-army-24",
["alien-army-24"] = "alien-army-25",
["alien-army-25"] = "alien-army-26",
["alien-army-26"] = "alien-army-27",
["alien-army-27"] = "alien-army-28",
["alien-army-28"] = "alien-army-29",
["alien-army-29"] = "alien-army-30",
["alien-army-30"] = "alien-army-31",
["alien-army-31"] = "alien-army-32",
["alien-army-32"] = "alien-army-33",
["alien-army-33"] = "alien-army-34",
["alien-army-34"] = "alien-army-35",
["alien-army-35"] = "alien-army-36",
["alien-army-36"] = "alien-army-37",
["alien-army-37"] = "alien-army-38",
["alien-army-38"] = "alien-army-39",
["alien-army-39"] = "alien-army-40",
["alien-army-40"] = "alien-army-41",
["alien-army-41"] = "alien-army-42",
["alien-army-42"] = "alien-army-43",
["alien-army-43"] = "alien-army-44",
["alien-army-44"] = "alien-army-45",
["alien-army-45"] = "alien-army-46",
["alien-army-46"] = "alien-army-47",
["alien-army-47"] = "alien-army-48",
["alien-army-48"] = "alien-army-49",
["alien-army-49"] = "alien-army-50",
["alien-army-50"] = "alien-army-51",
["alien-army-51"] = "alien-army-52",
["alien-army-52"] = "alien-army-53",
["alien-army-53"] = "alien-army-54",
["alien-army-54"] = "alien-army-55",
["alien-army-55"] = "alien-army-56",
["alien-army-56"] = "alien-army-57",
["alien-army-57"] = "alien-army-58",
["alien-army-58"] = "alien-army-59",
["alien-army-59"] = "alien-army-60",
["alien-army-60"] = "alien-army-61",
["alien-army-61"] = "alien-army-62",
["alien-army-62"] = "alien-army-63",
["alien-army-63"] = "alien-army-64",
["alien-army-64"] = "alien-army-65",
["alien-army-65"] = "alien-army-66",
["alien-army-66"] = "alien-army-67",
["alien-army-67"] = "alien-army-68",
["alien-army-68"] = "alien-army-69",
["alien-army-69"] = "alien-army-70",
["alien-army-70"] = "alien-army-71",
["alien-army-71"] = "alien-army-72",
["alien-army-72"] = "alien-army-73",
["alien-army-73"] = "alien-army-74",
["alien-army-74"] = "alien-army-75",
["alien-army-75"] = "alien-army-76",
["alien-army-76"] = "alien-army-77",
["alien-army-77"] = "alien-army-78",
["alien-army-78"] = "alien-army-79",
["alien-army-79"] = "alien-army-80",
["alien-army-80"] = "alien-army-81",
["alien-army-81"] = "alien-army-82",
["alien-army-82"] = "alien-army-83",
["alien-army-83"] = "alien-army-84",
["alien-army-84"] = "alien-army-85",
["alien-army-85"] = "alien-army-86",
["alien-army-86"] = "alien-army-87",
["alien-army-87"] = "alien-army-88",
["alien-army-88"] = "alien-army-89",
["alien-army-89"] = "alien-army-90",
["alien-army-90"] = "alien-army-91",
["alien-army-91"] = "alien-army-92",
["alien-army-92"] = "alien-army-93",
["alien-army-93"] = "alien-army-94",
["alien-army-94"] = "alien-army-95",
["alien-army-95"] = "alien-army-96",
["alien-army-96"] = "alien-army-97",
["alien-army-97"] = "alien-army-98",
["alien-army-98"] = "alien-army-99",
["alien-army-99"] = "alien-army-100"


}


local Alien_Upgrade_from_killing_Spawner = 
{

["alien-army-1"] = "alien-army-4",
["alien-army-2"] = "alien-army-5",
["alien-army-3"] = "alien-army-6",
["alien-army-4"] = "alien-army-7",
["alien-army-5"] = "alien-army-8",
["alien-army-6"] = "alien-army-9",
["alien-army-7"] = "alien-army-10",
["alien-army-8"] = "alien-army-11",
["alien-army-9"] = "alien-army-12",
["alien-army-10"] = "alien-army-13",
["alien-army-11"] = "alien-army-14",
["alien-army-12"] = "alien-army-15",
["alien-army-13"] = "alien-army-16",
["alien-army-14"] = "alien-army-17",
["alien-army-15"] = "alien-army-18",
["alien-army-16"] = "alien-army-19",
["alien-army-17"] = "alien-army-20",
["alien-army-18"] = "alien-army-21",
["alien-army-19"] = "alien-army-22",
["alien-army-20"] = "alien-army-23",
["alien-army-21"] = "alien-army-24",
["alien-army-22"] = "alien-army-25",
["alien-army-23"] = "alien-army-26",
["alien-army-24"] = "alien-army-27",
["alien-army-25"] = "alien-army-28",
["alien-army-26"] = "alien-army-29",
["alien-army-27"] = "alien-army-30",
["alien-army-28"] = "alien-army-31",
["alien-army-29"] = "alien-army-32",
["alien-army-30"] = "alien-army-33",
["alien-army-31"] = "alien-army-34",
["alien-army-32"] = "alien-army-35",
["alien-army-33"] = "alien-army-36",
["alien-army-34"] = "alien-army-37",
["alien-army-35"] = "alien-army-38",
["alien-army-36"] = "alien-army-39",
["alien-army-37"] = "alien-army-40",
["alien-army-38"] = "alien-army-41",
["alien-army-39"] = "alien-army-42",
["alien-army-40"] = "alien-army-43",
["alien-army-41"] = "alien-army-44",
["alien-army-42"] = "alien-army-45",
["alien-army-43"] = "alien-army-46",
["alien-army-44"] = "alien-army-47",
["alien-army-45"] = "alien-army-48",
["alien-army-46"] = "alien-army-49",
["alien-army-47"] = "alien-army-50",
["alien-army-48"] = "alien-army-51",
["alien-army-49"] = "alien-army-52",
["alien-army-50"] = "alien-army-53",
["alien-army-51"] = "alien-army-54",
["alien-army-52"] = "alien-army-55",
["alien-army-53"] = "alien-army-56",
["alien-army-54"] = "alien-army-57",
["alien-army-55"] = "alien-army-58",
["alien-army-56"] = "alien-army-59",
["alien-army-57"] = "alien-army-60",
["alien-army-58"] = "alien-army-61",
["alien-army-59"] = "alien-army-62",
["alien-army-60"] = "alien-army-63",
["alien-army-61"] = "alien-army-64",
["alien-army-62"] = "alien-army-65",
["alien-army-63"] = "alien-army-66",
["alien-army-64"] = "alien-army-67",
["alien-army-65"] = "alien-army-68",
["alien-army-66"] = "alien-army-69",
["alien-army-67"] = "alien-army-70",
["alien-army-68"] = "alien-army-71",
["alien-army-69"] = "alien-army-72",
["alien-army-70"] = "alien-army-73",
["alien-army-71"] = "alien-army-74",
["alien-army-72"] = "alien-army-75",
["alien-army-73"] = "alien-army-76",
["alien-army-74"] = "alien-army-77",
["alien-army-75"] = "alien-army-78",
["alien-army-76"] = "alien-army-79",
["alien-army-77"] = "alien-army-80",
["alien-army-78"] = "alien-army-81",
["alien-army-79"] = "alien-army-82",
["alien-army-80"] = "alien-army-83",
["alien-army-81"] = "alien-army-84",
["alien-army-82"] = "alien-army-85",
["alien-army-83"] = "alien-army-86",
["alien-army-84"] = "alien-army-87",
["alien-army-85"] = "alien-army-88",
["alien-army-86"] = "alien-army-89",
["alien-army-87"] = "alien-army-90",
["alien-army-88"] = "alien-army-91",
["alien-army-89"] = "alien-army-92",
["alien-army-90"] = "alien-army-93",
["alien-army-91"] = "alien-army-94",
["alien-army-92"] = "alien-army-95",
["alien-army-93"] = "alien-army-96",
["alien-army-94"] = "alien-army-97",
["alien-army-95"] = "alien-army-98",
["alien-army-96"] = "alien-army-99",
["alien-army-97"] = "alien-army-100",
["alien-army-98"] = "alien-army-100",
["alien-army-99"] = "alien-army-100"

}


local Death_Action = {

["alien-den"] ="Swarm",
["alien-army-1"] ="Nothing",
["alien-army-2"] ="Nothing",
["alien-army-3"] ="Nothing",
["alien-army-4"] ="Nothing",
["alien-army-5"] ="Nothing",
["alien-army-6"] ="Nothing",
["alien-army-7"] ="Nothing",
["alien-army-8"] ="Nothing",
["alien-army-9"] ="Nothing",
["alien-army-10"] ="Swarm",
["alien-army-11"] ="Swarm",
["alien-army-12"] ="Swarm",
["alien-army-13"] ="Swarm",
["alien-army-14"] ="Swarm",
["alien-army-15"] ="Swarm",
["alien-army-16"] ="Swarm",
["alien-army-17"] ="Swarm",
["alien-army-18"] ="Swarm",
["alien-army-19"] ="Swarm",
["alien-army-20"] ="Swarm",
["alien-army-21"] ="Swarm",
["alien-army-22"] ="Swarm",
["alien-army-23"] ="Swarm",
["alien-army-24"] ="Swarm",
["alien-army-25"] ="Swarm",
["alien-army-26"] ="Breed",
["alien-army-27"] ="Breed",
["alien-army-28"] ="Breed",
["alien-army-29"] ="Breed",
["alien-army-30"] ="Breed",
["alien-army-31"] ="Breed",
["alien-army-32"] ="Breed",
["alien-army-33"] ="Breed",
["alien-army-34"] ="Breed",
["alien-army-35"] ="Breed",
["alien-army-36"] ="Breed",
["alien-army-37"] ="Breed",
["alien-army-38"] ="Breed",
["alien-army-39"] ="Breed",
["alien-army-40"] ="Breed",
["alien-army-41"] ="Swarm",
["alien-army-42"] ="Swarm",
["alien-army-43"] ="Swarm",
["alien-army-44"] ="Swarm",
["alien-army-45"] ="Swarm",
["alien-army-46"] ="Swarm",
["alien-army-47"] ="Swarm",
["alien-army-48"] ="Swarm",
["alien-army-49"] ="Swarm",
["alien-army-50"] ="Swarm",
["alien-army-51"] ="Explode",
["alien-army-52"] ="Explode",
["alien-army-53"] ="Explode",
["alien-army-54"] ="Explode",
["alien-army-55"] ="Explode",
["alien-army-56"] ="Explode",
["alien-army-57"] ="Explode",
["alien-army-58"] ="Explode",
["alien-army-59"] ="Explode",
["alien-army-60"] ="Explode",
["alien-army-61"] ="Swarm",
["alien-army-62"] ="Swarm",
["alien-army-63"] ="Swarm",
["alien-army-64"] ="Swarm",
["alien-army-65"] ="Swarm",
["alien-army-66"] ="Swarm",
["alien-army-67"] ="Swarm",
["alien-army-68"] ="Swarm",
["alien-army-69"] ="Swarm",
["alien-army-70"] ="Swarm",
["alien-army-71"] ="Swarm",
["alien-army-72"] ="Swarm",
["alien-army-73"] ="Swarm",
["alien-army-74"] ="Swarm",
["alien-army-75"] ="Swarm",
["alien-army-76"] ="Swarm",
["alien-army-77"] ="Swarm",
["alien-army-78"] ="Swarm",
["alien-army-79"] ="Swarm",
["alien-army-80"] ="Swarm",
["alien-army-81"] ="Swarm",
["alien-army-82"] ="Swarm",
["alien-army-83"] ="Swarm",
["alien-army-84"] ="Swarm",
["alien-army-85"] ="Swarm",
["alien-army-86"] ="Breed_Swarm",
["alien-army-87"] ="Breed_Swarm",
["alien-army-88"] ="Breed_Swarm",
["alien-army-89"] ="Breed_Swarm",
["alien-army-90"] ="Breed_Swarm",
["alien-army-91"] ="Breed_Swarm",
["alien-army-92"] ="Breed_Swarm",
["alien-army-93"] ="Breed_Swarm",
["alien-army-94"] ="Breed_Swarm",
["alien-army-95"] ="Breed_Swarm",
["alien-army-96"] ="Breed_Swarm",
["alien-army-97"] ="Breed_Swarm",
["alien-army-98"] ="Breed_Swarm",
["alien-army-99"] ="Breed_Swarm",
["alien-army-100"] ="Breed_Swarm"

}


local Swarm_Count = {

["alien-den"] = 5,
["alien-army-1"] = 0,
["alien-army-2"] = 0,
["alien-army-3"] = 0,
["alien-army-4"] = 0,
["alien-army-5"] = 0,
["alien-army-6"] = 0,
["alien-army-7"] = 0,
["alien-army-8"] = 0,
["alien-army-9"] = 0,
["alien-army-10"] =1,
["alien-army-11"] =2,
["alien-army-12"] =3,
["alien-army-13"] =4,
["alien-army-14"] =5,
["alien-army-15"] =6,
["alien-army-16"] =7,
["alien-army-17"] =8,
["alien-army-18"] =9,
["alien-army-19"] =10,
["alien-army-20"] =11,
["alien-army-21"] =12,
["alien-army-22"] =13,
["alien-army-23"] =14,
["alien-army-24"] =15,
["alien-army-25"] =16,
["alien-army-26"] =17,
["alien-army-27"] =18,
["alien-army-28"] =19,
["alien-army-29"] =20,
["alien-army-30"] =21,
["alien-army-31"] =22,
["alien-army-32"] =23,
["alien-army-33"] =24,
["alien-army-34"] =25,
["alien-army-35"] =26,
["alien-army-36"] =27,
["alien-army-37"] =28,
["alien-army-38"] =29,
["alien-army-39"] =30,
["alien-army-40"] =31,
["alien-army-41"] =32,
["alien-army-42"] =33,
["alien-army-43"] =34,
["alien-army-44"] =35,
["alien-army-45"] =36,
["alien-army-46"] =37,
["alien-army-47"] =38,
["alien-army-48"] =39,
["alien-army-49"] =40,
["alien-army-50"] =41,
["alien-army-51"] =42,
["alien-army-52"] =43,
["alien-army-53"] =44,
["alien-army-54"] =45,
["alien-army-55"] =46,
["alien-army-56"] =47,
["alien-army-57"] =48,
["alien-army-58"] =49,
["alien-army-59"] =50,
["alien-army-60"] =51,
["alien-army-61"] =52,
["alien-army-62"] =53,
["alien-army-63"] =54,
["alien-army-64"] =55,
["alien-army-65"] =56,
["alien-army-66"] =57,
["alien-army-67"] =58,
["alien-army-68"] =59,
["alien-army-69"] =60,
["alien-army-70"] =61,
["alien-army-71"] =62,
["alien-army-72"] =63,
["alien-army-73"] =64,
["alien-army-74"] =65,
["alien-army-75"] =66,
["alien-army-76"] =67,
["alien-army-77"] =68,
["alien-army-78"] =69,
["alien-army-79"] =70,
["alien-army-80"] =71,
["alien-army-81"] =72,
["alien-army-82"] =73,
["alien-army-83"] =74,
["alien-army-84"] =75,
["alien-army-85"] =76,
["alien-army-86"] =77,
["alien-army-87"] =78,
["alien-army-88"] =79,
["alien-army-89"] =80,
["alien-army-90"] =81,
["alien-army-91"] =82,
["alien-army-92"] =83,
["alien-army-93"] =84,
["alien-army-94"] =85,
["alien-army-95"] =86,
["alien-army-96"] =87,
["alien-army-97"] =88,
["alien-army-98"] =89,
["alien-army-99"] =90,
["alien-army-100"] =91

}

------------------------------

function raisealien(event, Alien, surface)
   

	local risenPosition = event.entity.position
	local entityType = event.entity.type
	local entityName = event.entity.name
	local freeAliens = Alien.freeAliens
	
	if (event.force ~= nil) and (event.force.name == "alien") and (event.entity.force.name == "enemy") then
	


		--- If an Unit get's killed
		if (entityType == "unit") then		
			
			local risen = surface.create_entity({name = "alien-army-1", position = risenPosition, force = "alien"})
			freeAliens[#freeAliens+1] = risen
			--
			-- Upgrade the alien that did the killing of the Unit
			if event.cause and event.cause.force.name == "alien" then
				
				local causeName = event.cause.name
			
				if ValidUpgrade[causeName] then

					--writeDebug(entityName.. ", was killed by "..causeName.. " and raised as a alien-army-1")		
					--writeDebug("The Killing was done by "..causeName)
					Risen_alien = Alien_Upgrade_from_killing_Units[causeName]
					event.cause.destroy()			
						
					local risen = surface.create_entity({name = Risen_alien, position = risenPosition, force = "alien"})

				end
		   
			end
		
		--- If a Spawner get's killed
		elseif (entityType == "unit-spawner") then

			writeDebug("An Alien Nest was destroyed")	
			-- Raise 5 units if a spawner get's killed
			risenPosition.x = risenPosition.x - 5
			for i=1, 5 do
				
				local risen = surface.create_entity({name = "alien-army-1", position = risenPosition, force = "alien"})
				freeAliens[#freeAliens+1] = risen
				risenPosition.x = risenPosition.x + 1
				
			end
			--
			-- Upgrade the alienite that did the killing of the Spawner
			if event.cause and event.cause.force.name == "alien" then
				
			-- The Evolution Factor gets affected when the Aliens kill nests, so I'm counteracting that here.	
				writeDebug("Alien killed an Enemy Spawner")
				game.forces.enemy.evolution_factor = game.forces.enemy.evolution_factor - (game.map_settings.enemy_evolution.destroy_factor * (1-game.forces.enemy.evolution_factor)^2)	

				local causeName = event.cause.name
			
				if ValidUpgrade[causeName] then

					--writeDebug(entityName.. ", was killed by "..causeName.. " and raised as a alien-army-1")		
					--writeDebug("The Killing was done by "..causeName)
					Risen_alien = Alien_Upgrade_from_killing_Spawner[causeName]
					event.cause.destroy()			
						
					local risen = surface.create_entity({name = Risen_alien, position = risenPosition, force = "alien"})

				end
		   
			end
			
		end
		--writeDebug("The number of Free Minions are: "..#freeAliens)	
		--writeDebug("The Horde number is: "..#global.Total_Nest_Count)	
		
	     if (#freeAliens > 10) then
            Alien = formclans(Alien, surface)
        end
	
	end

	---- If an Alien unit dies
    if (event.force ~= nil)  and (entityType == "unit")  and (event.entity.force.name == "alien") then 
			
		--writeDebug("A alien Died")	
		local AlienName = event.entity.name
		
		if Death_Action[AlienName] == 'Swarm' then
			
			writeDebug("Swarm")	
			Alien_Swarm(event)
			
		
		elseif Death_Action[AlienName] == 'Breed' then
		
			writeDebug("Breed")
			Spawn_Nest(event)
			
		
		elseif Death_Action[AlienName] == 'Explode' then
		
			writeDebug("Explode")
			Explosion(event)
			
		elseif Death_Action[AlienName] == 'Breed_Swarm' then
		
			Spawn_Nest(event)
			Alien_Swarm(event)
			
		else
		
			writeDebug("Not in Death_Action table")
			
		end
		
	end
	
	---- If an Alien nest dies
	if (event.force ~= nil)  and (entityType == "unit-spawner") and (event.entity.name == "alien-den")  then 
	
		Alien_Swarm(event)
		global.Total_Nest_Count = global.Total_Nest_Count + 1
		
	end
	
    return Alien
end


function Explosion(event)

	local Acid_Explosion_Position = event.entity.position
	event.entity.surface.create_entity({name = "acid-explosion", position = Acid_Explosion_Position, force = "alien"})
		
end


function Spawn_Nest(event)

	local SpawnAlienPosition = event.entity.surface.find_non_colliding_position(event.entity.name, event.entity.position, 2 , 0.5)
	if SpawnAlienPosition then
		local new_nest = event.entity.surface.create_entity({name = "alien-den", position = SpawnAlienPosition, force = "alien"})
		--table.insert(global.Total_Nest_Count, new_nest)
		writeDebug("An Alien Nest Spawned")	
		-- Add the created nest to the table
		global.Total_Nest_Count = global.Total_Nest_Count + 1
		
		for _,force in pairs( game.forces )do
			force.chart( surface, {{x = SpawnAlienPosition.x - 10, y = SpawnAlienPosition.y - 10}, {x = SpawnAlienPosition.x, y = SpawnAlienPosition.y}})
		end		
		
	end
			
end


-- Swarn the Alien that died
function Alien_Swarm(event)
	local AlienName = event.entity.name
	--writeDebug("Alien Name: "..AlienName) 

	local number = Swarm_Count[AlienName]

	for i = 1, number do
		local SpawnAlienPosition = event.entity.surface.find_non_colliding_position(AlienName, event.entity.position, 2 , 0.5)
		if SpawnAlienPosition then
			event.entity.surface.create_entity({name = "alien-army-1", position = SpawnAlienPosition, force = "alien"})
		end
	end

end




--[[
function Remove_Nest(index)

  if index then
    if global.Total_Nest_Count[index] and not global.Total_Nest_Count[index].valid then
      table.remove(global.Total_Nest_Count, index)
	  --writeDebug("Removed A")
      return -- if an index was found and it's entity was not valid return after removing it
    end
  end
  -- if no index was provided, or an inappropriate index was provided then loop through the table

  for k,v in ipairs(global.Total_Nest_Count) do
    if not v.valid then
      table.remove(global.Total_Nest_Count,k)
      --writeDebug("Removed B")
    end
  end
  
 writeDebug("The current Nest count is: "..#global.Total_Nest_Count)	

end

]]

function formclans(Alien, surface)

    local freeAliens = Alien.freeAliens
	--writeDebug("2: "..#freeAliens)
    local clanLeader = findValidUnit(freeAliens)
    -- pick the first unassigned valid unit
    if (clanLeader ~= nil) then
        local newClan = surface.create_unit_group({position = clanLeader.position,
                                                   force = "alien"})
        local minions = Alien.minions
        for i=1, #freeAliens do
            local alien_x = freeAliens[i]
            if (alien_x ~= nil) then
                if (alien_x.valid) then
                    newClan.add_member(alien_x)
                    minions[#minions+1] = alien_x
                    freeAliens[i] = nil
                else
                    freeAliens[i] = nil
                end
            end
        end
		
        Alien.clans[#Alien.clans+1] = newClan
        -- merge clans if they are close enough together
        mergeclans(Alien, surface)
        -- give clans orders
        moveclans(Alien, surface)	

    end
    return Alien
end

-----------------

function mergeclans(Alien, surface) 
	
    local clans = Alien.clans
    if (#clans >= 2) then
        
        for clanIndex=1, #clans do
            -- pick a clan and merge with any other nearby clans
            local clan = clans[clanIndex]
            if (clan ~= nil) and clan.valid then
                
                for mergedIndex=clanIndex+1, #clans do
                    local mergeClan = clans[mergedIndex]
                    if (mergeClan ~= nil) and (mergeClan.valid) then
                        if (euclideanDistance(clan.position, mergeClan.position) < 100) then
                            local mergeMembers = mergeClan.members
                            for i=1, #mergeMembers do
                                clan.add_member(mergeMembers[i])
                            end
                            mergeClan.destroy()
                            clans[mergedIndex] = nil
                        end
                    end
                end
            
            end
			--writeDebug("Two clans got merged")
			--writeDebug("Now the number of clans: "..#clans)
        end
    
    end
    return Alien
end

-----------------

function moveclans(Alien, surface)

    local clans = Alien.clans
    local clanIndex = 1
	writeDebug("Trying to move clans")
    --[[
	repeat
        local clan = clans[clanIndex]
        if (clan ~= nil) and (clan.valid) then
            -- check pollution is touching unit group, set_autonomous
            if (surface.get_pollution(clan.position) ~= 0) then
                clan.set_autonomous()
            end
            
            local players = game.players
            local playerIndex = 1
            local closestDistance = -1
            local closestPlayer = nil
            repeat
                local distance = euclideanDistance(players[playerIndex].position, clan.position)
                if (closestDistance == -1) or (distance < closestDistance) then
                    closestPlayer = players[playerIndex]
                    closestDistance = distance
                end
                playerIndex = playerIndex + 1
            until (playerIndex >= #players)
            clan.set_command({type = defines.command.attack,
                              target = closestPlayer.character})
            
            -- TODO improve the logic
        end
        clanIndex = clanIndex + 1
    until (clanIndex >= #clans)
	]]
	
	repeat
        local clan = clans[clanIndex]
		local target = nil
        if (clan ~= nil) and (clan.valid) then

            local radius = 10 + 20 * game.forces.enemy.evolution_factor
            local closestDistance = -1
            local closestSpawner = nil			
			local pos = clan.position		
			local area = {{pos.x - radius, pos.y - radius}, {pos.x + radius, pos.y + radius}}
			local spawner = clan.surface.find_entities_filtered({area = area, type = "unit-spawner", force= "enemy"})
				
			if #spawner > 0 then
			--writeDebug("Found a Spawner in range")
				
				for _,enemy in pairs(spawner) do
					if target == nil then
						target={enemy}
					end
				end
			
			end			
			if target ~= nil then
				
				clan.set_command({type = defines.command.attack, target = target[1]})
				
			end

        end
        clanIndex = clanIndex + 1
    until (clanIndex >= #clans)
	
	
	
	
end
