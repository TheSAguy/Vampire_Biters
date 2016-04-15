data:extend(
{
  {
    type = "projectile",
    name = "unit-projectile",
    flags = {"not-on-map"},
    acceleration = 0.005,

  action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
			type = "create-entity",
			trigger_created_entity = "true",
			entity_name = "small-vampire"
          },
        }
      }
    },
	
	
    animation =
    {
      filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = {-0.09, 0.395}
    },
    rotatable = false
  },

 
}
)

