
data:extend(
{
-- item

  {
    type = "item",
    name = "test_radar",
    icon = "__base__/graphics/icons/radar.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "d[radar]-a[radar]",
    place_result = "test_radar",
    stack_size = 50
  },

  {
    type = "radar",
    name = "test_radar",
    icon = "__base__/graphics/icons/radar.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "test_radar"},
    max_health = 250,
    corpse = "big-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_per_sector = "10MJ",
    max_distance_of_sector_revealed = 80,
    max_distance_of_nearby_sector_revealed = 60,
    energy_per_nearby_scan = "250kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "100kW",
    pictures =
    {
      filename = "__base__/graphics/entity/radar/radar.png",
      priority = "low",
      width = 153,
      height = 131,
      apply_projection = false,
      direction_count = 64,
      line_length = 8,
      shift = util.by_pixel(27.5,-12.5)
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 2,
    },
    radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 },
  },
  
  --- recipe
  
    {
    type = "recipe",
    name = "test_radar",
	enabled = true,
    ingredients =
    {
      {"electronic-circuit", 5},
      {"iron-gear-wheel", 5},
      {"iron-plate", 10}
    },
    result = "test_radar",
    requester_paste_multiplier = 4
  },
  
})
