require "util"
require "defines"



---------------------------------------------				 
function Load_Me()

	if game.forces['vampire'] == nil then
		game.create_force('vampire')
		writeDebug("Vampire force created")
		--game.forces['vampire'].set_cease_fire('enemy', false)
		--game.forces['vampire'].set_cease_fire('player', false)
	end
end


---------------------------------------------
script.on_event({defines.events.on_entity_died,},function(event) On_Remove(event) end)
---------------------------------------------

victims={
	["small-biter"] = "small-vampire",
	["small-spitter"] = "small-vampire",
	["medium-biter"] = "medium-vampire",
	["medium-spitter"] = "medium-vampire",
	["big-biter"] = "big-vampire",
	["big-spitter"] = "big-vampire",

--[[
	["small-biter-Mk2"] = "small-vampire",
	["small-spitter-Mk2"] = "small-vampire",
	["small-biter-Mk3"] = "small-vampire",
	["small-spitter-Mk3"] = "small-vampire",

	["medium-biter-Mk2"] = "medium-vampire",
	["medium-spitter-Mk2"] = "medium-vampire",
	["medium-biter-Mk3"] = "medium-vampire",
	["medium-spitter-Mk3"] = "medium-vampire",

	["big-biter-Mk2"] = "big-vampire",
	["big-spitter-Mk2"] = "big-vampire",
	["big-biter-Mk3"] = "big-vampire",
	["big-spitter-Mk3"] = "big-vampire",
]]
	
}


function On_Remove(event)

   -- When an entity from the list of valid victims is killed
    if victims[event.entity.name]  then
        local victim=event.entity
        local killcount = game.forces.vampire.get_kill_count(victim.name)
        global.vampire_kills=global.vampire_kills or {}
        --global.vampire_kills[victim.name]=global.vampire_kills[victim.entity.name] or 0
		global.vampire_kills[victim.name]=global.vampire_kills[victim.name] or 0
        if global.vampire_kills[victim.name] ~= killcount then
            global.vampire_kills[victim.name] = killcount
            SpawnVampire(victim)
        end
  end
end



function SpawnVampire(former_entity)
    local e = former_entity
      --local SpawnPosition = enemy.surface.find_non_colliding_position(enemy, enemy.position, 2, 0.5) --we probably don't need this, since the former_entity did occupy some perfectly valid position and is dying this tick anyway, freeing that space
    local new_ent = e.surface.create_entity{name=victims[e.name], position=e.position, force=game.forces.vampire}
    
    --below is additional functionality that has sneaked in. Namely, the mentioned creation of unit group and giving it to the game AI
    global.last_arisen = global.last_arisen or {}
    global.last_arisen[e.surface.name] = global.last_arisen[e.surface.name] or {}
    table.insert(global.last_arisen[e.surface.name], new_ent) --prepare for giving group to AI 
    if not global.next_group_formation then 
         --register the handler which should eventually pass the group if it was not initialized before
         script.on_event(defines.events.on_tick, group_pass)
         global.next_group_formation=global.next_group_formation or {}
    end
    global.next_group_formation[e.surface.name] = game.tick + 5 * 60 --this sets the timeout for group formation on this surface to be 5 seconds after the last vampire creation
	
end




function group_pass(event)
    --handle giving the vampires a greater goal
    for surf_name, time in pairs(global.next_group_formation) do
    if time == event.tick then
        local units = global.last_arisen[ surf_name ]
        local vamp = units[1]
        group = vamp.surface.create_unit_group{force=vamp.force, position=vamp.position}
        for i =2, #units do
             group.add_member(units[i])
        end
        group.set_autonomous() --the game will probably use them for building a base or attacking player
        
        --clean up
       global.last_arisen[ surf_name ] = nil
       global.next_group_formation[surf_name] = nil 
       if not next(global.next_group_formation) then
           --if there's no non-nil elements in global.next_group_formation then all fights are finished for now and we don't need the on_tick handler for a while
           script.on_event(defines.events.on_tick, nil)
       end
    end
    end        
end

---------------------------------------------
script.on_init(Load_Me)
script.on_configuration_changed(Load_Me)

---------------------------------------------


--- DeBug Messages 
QCCode = true

function writeDebug(message)
	if QCCode then 
		for i, player in ipairs(game.players) do
			player.print(tostring(message))
		end
	end
end



----------------------------------



