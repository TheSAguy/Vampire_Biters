require ("stdlib/event/event")

EvoGUI = {}

	if not global.Total_Nest_Count then
          global.Total_Nest_Count = 0
        elseif global.Total_Nest_Count < 0 then
          global.Total_Nest_Count = 0
	end

	
			

    function EvoGUI.create_Nest_Count_Text()
        local text = "Alien Nest Count: " ..global.Total_Nest_Count
        return text
    end

    function EvoGUI.create_Clan_Count_Text()
        local text = "Alien Clan Count: " ..#global.Alien.clans
        return text
    end

    function EvoGUI.create_Initial_Count_Text()
        local text = "Initial Alien Count: " ..#global.Initial_Aliens.count
        return text
    end    
	
    function EvoGUI.setup()
        if remote.interfaces.EvoGUI and remote.interfaces.EvoGUI.create_remote_sensor then
            global.evo_gui.detected = true

            remote.call("EvoGUI", "create_remote_sensor", {
                mod_name = "Aliens",
                name = "Alien_Nest_Count",
                text = "# of Alien Nests",
                caption = "Alien Nest Count"
            })
            
			remote.call("EvoGUI", "create_remote_sensor", {
                mod_name = "Aliens",
                name = "Alien_Clan_Count",
                text = "Alien Clan Count",
                caption = "Alien Clan Count"
            })		

			remote.call("EvoGUI", "create_remote_sensor", {
                mod_name = "Aliens",
                name = "Initial_Alien_Count",
                text = "Initial Alien Count",
                caption = "Initial Alien Count"
            })	
			
            EvoGUI.update_gui()
        end
    end

Event.register(defines.events.on_tick, function(event)	

    if not global.evo_gui then global.evo_gui = {} end

        if not global.evo_gui.detected then
            EvoGUI.setup()
        end
		
		if global.evo_gui.detected and game.tick % 10 == 0 then
            if remote.interfaces.EvoGUI then
				EvoGUI.update_gui()
            end
        end

end)	

    function EvoGUI.update_gui()
        -- figure out what color to make the text here (if any)
        local color = { r = 255, g = 255, b = 255 }

        remote.call("EvoGUI", "update_remote_sensor", "Alien_Nest_Count", EvoGUI.create_Nest_Count_Text(), color)
        remote.call("EvoGUI", "update_remote_sensor", "Alien_Clan_Count", EvoGUI.create_Clan_Count_Text(), color)
		remote.call("EvoGUI", "update_remote_sensor", "Initial_Alien_Count", EvoGUI.create_Initial_Count_Text(), color)
		
    end


return EvoGUI