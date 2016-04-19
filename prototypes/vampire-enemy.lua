

vampire_den_tint = {r=0, g=0, b=0, a=1}



small_vampire_scale = 0.75
small_vampire_tint1 = {r=0, g=0, b=0, a=0}
small_vampire_tint2 = {r=1, g=0.3, b=1.0, a=0.9}

medium_vampire_scale = 1.25
medium_vampire_tint1 = {r=0.3, g=0.9, b=0.9, a=0.6}
medium_vampire_tint2 = {r=0.3, g=1.0, b=0.6, a=0.95}

big_vampire_scale = 2.5
big_vampire_tint1 = {r=0.9, g=0.3, b=0.3, a=0.6}
big_vampire_tint2 = {r=1.0, g=0.3, b=0.8, a=0.95}




--- DEN ---
data:extend(
{
  {
    type = "unit-spawner",
    name = "vampire-den",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 5000,
    order="b-b-i",
    subgroup="enemies",
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0
        }
      },
      apparent_volume = 2
    },
    dying_sound =
    {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0
      }
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 40,
      },
      {
        type = "explosion",
        percent = 20,
      },
	 {
        type = "laser",
        percent = 80,
      },
      {
        type = "acid",
        percent = 20,
      },
      {
        type = "poison",
        percent = 20,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
    pollution_absorbtion_absolute = 20,
    pollution_absorbtion_proportional = 0.01,
    pollution_to_enhance_spawning = 40000,
    corpse = "vampire-den-corpse",
    dying_explosion = "blood-explosion-huge",
    loot =
    {
      {
        count_min = 10,
        count_max = 15,
        item = "alien-artifact",
        probability = 1
      },
    },
    max_count_of_owned_units = 10,
    max_friends_around_to_spawn = 20,
	--max_count_of_owned_units = 25,
    --max_friends_around_to_spawn = 50,
    
    animations =
    {
      spawner_idle_animation(0, vampire_den_tint),
      spawner_idle_animation(1, vampire_den_tint),
      spawner_idle_animation(2, vampire_den_tint),
      spawner_idle_animation(3, vampire_den_tint)
    },

	result_units = (function()
		local res = {}
        res[1] = {"small-vampire", {{0.0, 0.3}, {0.7, 0.0}}}
            -- from evolution_factor 0.3 the weight for medium-biter is linearly rising from 0 to 0.3
			-- this means for example that when the evolution_factor is 0.45 the probability of spawning
            -- a small biter is 66% while probability for medium biter is 33%.
		res[2] = {"medium-vampire", {{0.3, 0.0}, {0.6, 0.3}, {0.8, 0.1}}}
            -- for evolution factor of 1 the spawning probabilities are: small-biter 0%, medium-biter 1/7, big-biter 4/7, behemoth biter 3/7
        res[3] = {"big-vampire", {{0.6, 0.0}, {1.0, 0.4}}}
		--res[4] = {"behemoth-biter", {{0.99, 0.0}, {1.0, 0.3}}}
        
        return res
    end)(),
	
	
    -- With zero evolution the spawn rate is 5 seconds, with max evolution it is 2 seconds
    spawning_cooldown = {600, 100},
	--spawning_cooldown = {300, 120},
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace =
    {
      sharpness = 0.8,
	  --sharpness = 0.4, -- default
      control = "enemy-base",
      order = "b[enemy]-c[vampire-den]",
      richness_multiplier = 0.5, 
	  --richness_multiplier = 1, -- default
      richness_base = 0,
      --force = "enemy", -- default
	  force = "vampire",
      peaks =
      {
        {
          influence = 0,
          richness_influence = 100,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
        {
          influence = -10.0,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.42,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
        },
        -- increase the size when moving further away
        {
          --influence = 0.06,
		  influence = 0.4, -- default
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
      }
    }
  },

  {
    type = "corpse",
    name = "vampire-den-corpse",
    flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
    icon = "__base__/graphics/icons/biter-spawner-corpse.png",
    collision_box = {{-2, -2}, {2, 2}},
    selection_box = {{-2, -2}, {2, 2}},
    selectable_in_game = false,
    dying_speed = 0.04,
    subgroup="corpses",
    order = "c[corpse]-d[vampire-den]",
    final_render_layer = "corpse",
    animation =
    {
      spawner_die_animation(0, vampire_den_tint),
      spawner_die_animation(1, vampire_den_tint),
      spawner_die_animation(2, vampire_den_tint),
      spawner_die_animation(3, vampire_den_tint)
    }
  },

}
)


------- UNITS   --------------

data:extend(
{
  {
    type = "unit",
    name = "small-vampire",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 8,
    order="b-b-d",
    subgroup="enemies",
    resistances = 
    {
      {
        type = "physical",
        decrease = 5,
        percent = 10,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 10,
      },
	 {
        type = "laser",
		decrease = 5,
        percent = 10,
      },
      {
        type = "impact",
        decrease = 5,
		percent = 10,
      },
      {
        type = "fire",
		decrease = 5,
        percent = 10,
      },
      {
        type = "poison",
		decrease = 5,
        percent = 10,
      },
      {
        type = "acid",
        decrease = 5,
        percent = 10,
      },
    },
    healing_per_tick = 0.04,
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "melee",
      ammo_type = 
      {
        category = "melee",
        target_type = "entity",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "damage",
                damage = { amount = 10 , type = "Vampire_Kiss"}
              }
            }
          }
        }
      },
      range = 1,
      cooldown = 35,
      sound =  make_biter_roars(0.6),
      animation = biterattackanimation(small_vampire_scale, small_vampire_tint1, small_vampire_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.16,
    distance_per_frame = 0.15,
    -- in pu
    pollution_to_join_attack = 1250,
    corpse = "small-vampire-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_biter_dying_sounds(1.0),
    run_animation = biterrunanimation(small_vampire_scale, small_vampire_tint1, small_vampire_tint2)
  },

    {
    type = "corpse",
    name = "small-vampire-corpse",
    icon = "__base__/graphics/icons/small-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-a[small]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(small_vampire_scale, small_vampire_tint1, small_vampire_tint2)
  },


  
  {
    type = "unit",
    name = "medium-vampire",
    order="b-b-e",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 500,
    subgroup="enemies",
    resistances = 
    {
      {
        type = "physical",
        decrease = 5,
        percent = 20,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 20,
      },
	 {
        type = "laser",
		decrease = 5,
        percent = 20,
      },
      {
        type = "impact",
        decrease = 5,
		percent = 20,
      },
      {
        type = "fire",
		decrease = 5,
        percent = 20,
      },
      {
        type = "poison",
		decrease = 5,
        percent = 20,
      },
      {
        type = "acid",
        decrease = 5,
        percent = 20,
      },
    },
    healing_per_tick = 0.06,
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters =
    {
      type = "projectile",
      range = 1,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = 
      {
        category = "melee",
        target_type = "entity",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "damage",
                damage = { amount = 15 , type = "Vampire_Kiss"}
              }
            }
          }
        }
      },
      sound =  make_biter_roars(0.8),
      animation = biterattackanimation(medium_vampire_scale, medium_vampire_tint1, medium_vampire_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.12,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 1500,
    corpse = "medium-vampire-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.5),
    dying_sound = make_biter_dying_sounds(1.0),
    run_animation = biterrunanimation(medium_vampire_scale, medium_vampire_tint1, medium_vampire_tint2)
  },

    
    {
    type = "corpse",
    name = "medium-vampire-corpse",
    icon = "__base__/graphics/icons/medium-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-a[medium]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(medium_vampire_scale, medium_vampire_tint1, medium_vampire_tint2)
  },


  
  {
    type = "unit",
    name = "big-vampire",
    order="b-b-e",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 1500,
    subgroup="enemies",
    resistances = 
    {
      {
        type = "physical",
        decrease = 5,
        percent = 30,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 30,
      },
	 {
        type = "laser",
		decrease = 5,
        percent = 30,
      },
      {
        type = "impact",
        decrease = 5,
		percent = 30,
      },
      {
        type = "fire",
		decrease = 5,
        percent = 30,
      },
      {
        type = "poison",
		decrease = 5,
        percent = 30,
      },
      {
        type = "acid",
        decrease = 5,
        percent = 30,
      },
    },
    healing_per_tick = 0.06,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters =
    {
      type = "projectile",
      range = 1,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = 
      {
        category = "melee",
        target_type = "entity",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "damage",
                damage = { amount = 40 , type = "Vampire_Kiss"}
              }
            }
          }
        }
      },
      sound =  make_biter_roars(1.2),
      animation = biterattackanimation(big_vampire_scale, big_vampire_tint1, big_vampire_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.12,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 1500,
    corpse = "big-vampire-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.5),
    dying_sound = make_biter_dying_sounds(1.0),
    run_animation = biterrunanimation(big_vampire_scale, big_vampire_tint1, big_vampire_tint2)
  },

  
  {
    type = "corpse",
    name = "big-vampire-corpse",
    icon = "__base__/graphics/icons/medium-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-a[big]",
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(big_vampire_scale, big_vampire_tint1, big_vampire_tint2)
  },


  
  


  }
)

