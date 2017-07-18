data:extend(
{

  {
    type = "int-setting",
    name = "Alien_Count",
    setting_type = "startup",
    default_value = 20,  
    minimum_value = 5,
	maximum_value = 100,
	order = "a[modifier]-a[Alien Count]",
    per_user = false,
  },

  {
    type = "int-setting",
    name = "Alien_Distance",
    setting_type = "startup",
    default_value = 200,
    minimum_value = 200,
	maximum_value = 1000,
	order = "a[modifier]-a[Alien Count]",
    per_user = false,
  },

  
  
}
)


