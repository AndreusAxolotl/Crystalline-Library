if  mods["Muria"] and mods["Paracelsin"] and  mods["quality"] then
data:extend({
    {
      type = "bool-setting",
      name = "paracelsin-muria-aqua-regia",
      setting_type = "startup",
      default_value = true
  },
    })
end