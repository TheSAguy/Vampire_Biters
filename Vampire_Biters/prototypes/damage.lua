data:extend(
{
  {
    type = "damage-type",
    name = "alien_Kiss"
  },
}
)

function acidtint()
return {r = 0.1, g = 0.7, b = 0.1}
end

function acidparticlescale()
  return 1.3
end

function shadowtint()
return {r = 0, g = 0, b = 0}
end

additional_damage = 25


data:extend(
{


 
  {
    type = "explosion",
    name = "acid-explosion",
    flags = {"not-on-map"},
    acceleration = 0.005,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "acid-explosion-huge"
          },
		  {
            type = "create-entity",
            entity_name = "acid-splash"
          },
          {
            type = "nested-result",
            action =
            {
				{
				type = "area",
				perimeter = 1,
                entity_flags = {"player-creation", "placeable-player", "placeable-neutral", "pushable"},
				action_delivery = { type = "instant", target_effects = { type = "damage", damage = { amount = 25+additional_damage, type = "alien_Kiss" }}}},
				{
				type = "area",
				perimeter = 3,
                entity_flags = {"player-creation", "placeable-player", "placeable-neutral", "pushable"},
				collision_mask = {"player-layer", "floor-layer"},
				action_delivery = { type = "instant", target_effects = { type = "damage", damage = { amount = 25+additional_damage, type = "acid" }}}},
				{
				type = "area",
				perimeter = 5,
                entity_flags = {"player-creation", "placeable-player", "placeable-neutral", "pushable"},
				collision_mask = {"player-layer", "floor-layer"},
				action_delivery = { type = "instant", target_effects = { type = "damage", damage = { amount = 10+additional_damage, type = "alien_Kiss" }}}},
				{
				type = "area",
				perimeter = 7,
                entity_flags = {"player-creation", "placeable-player", "placeable-neutral", "pushable"},
				collision_mask = {"player-layer", "floor-layer"},
				action_delivery = { type = "instant", target_effects = { type = "damage", damage = { amount = 10+additional_damage, type = "acid" }}}}
            },
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animations =
    {{
      filename = "__base__/graphics/entity/grenade/grenade-shadow.png",
      frame_count = 1,
      width = 1,
      height = 1,
      priority = "high"
    }}
  },
  
  ----
  {
    type = "explosion",
    name = "acid-explosion-huge",
    flags = {"not-on-map"},
     animations =
    {
      {
        filename = "__core__/graphics/empty.png",
        priority = "extra-high",
        width = 1,
        height = 1,
        frame_count = 1
      }
    },
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 150,
            entity_name = "acid-particle",
            initial_height = 0.5,
            speed_from_center = 0.08,
            speed_from_center_deviation = 0.05,
            initial_vertical_speed = -0.01,
            initial_vertical_speed_deviation = 0.02,
            offset_deviation = {{-0.4, -0.4}, {0.4, 0.4}}
          },
          {
            type = "create-entity",
            entity_name = "acid-fountain-big",
            repeat_count = 35,
            offset_deviation = {{-1.6, -1.6}, {1.6, 1.6}}
          }
        }
      }
    }
  },

  ----
  
    
  {
    type = "explosion",
    name = "acid-splash",
    flags = {"not-on-map"},
	animations =
    {
      {
        filename = "__base__/graphics/entity/flamethrower-fire-stream/flamethrower-explosion.png",
        priority = "extra-high",
        width = 64,
        height = 64,
		scale = 3.2,
		tint = {r=0, g=0.6, b=0, a=1},
        frame_count = 64,
        line_length = 8,
		animation_speed = 0.7,
      },
	  {
        filename = "__base__/graphics/entity/flamethrower-fire-stream/flamethrower-explosion.png",
        priority = "extra-high",
        width = 64,
        height = 64,
		scale = 3.6,
		tint = {r=0.3, g=0.8, b=0, a=1},
        frame_count = 64,
        line_length = 8,
		animation_speed = 0.7,
      },
	  {
        filename = "__base__/graphics/entity/flamethrower-fire-stream/flamethrower-explosion.png",
        priority = "extra-high",
        width = 64,
        height = 64,
		scale = 4,
		tint = {r=0.6, g=1, b=0, a=1},
        frame_count = 64,
        line_length = 8,
		animation_speed = 1,
      },
    },
  },
 
  
  ----
  
  {
    type = "particle-source",
    name = "acid-fountain-big",
    particle = "acid-particle",
    time_to_live = 30,
    time_to_live_deviation = 5,
    time_before_start = 0,
    time_before_start_deviation = 10,
    height = 0.4,
    height_deviation = 0.1,
    vertical_speed = 0.15,
    vertical_speed_deviation = 0.05,
    horizontal_speed = 0.04,
    horizontal_speed_deviation = 0.04
  },

  
  ----
  
  {
    type = "particle",
    name = "acid-particle",
    flags = {"not-on-map"},
    movement_modifier_when_on_ground = 0,
    life_time = 180,
    pictures =
    {
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-01.png",
        priority = "extra-high",
        width = 5,
        height = 6,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = acidtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-03.png",
        priority = "extra-high",
        width = 4,
        height = 7,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = acidtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-05.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = acidtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-07.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = acidtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-09.png",
        priority = "extra-high",
        width = 7,
        height = 4,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = acidtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-10.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = acidtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-11.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = acidtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-12.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = acidtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-13.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = acidtint()
      }
    },
    shadows =
    {
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-01.png",
        priority = "extra-high",
        width = 5,
        height = 6,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = shadowtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-03.png",
        priority = "extra-high",
        width = 4,
        height = 7,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = shadowtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-05.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = shadowtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-07.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = shadowtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-09.png",
        priority = "extra-high",
        width = 7,
        height = 4,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = shadowtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-10.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = shadowtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-11.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = shadowtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-12.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = shadowtint()
      },
      {
        filename = "__base__/graphics/entity/blood-particle/blood-particle-13.png",
        priority = "extra-high",
        width = 4,
        height = 5,
        frame_count = 6,
        scale = acidparticlescale(),
        tint = shadowtint()
      }
    }
  },
 
  
}
)

