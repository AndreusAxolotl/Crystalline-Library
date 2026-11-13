local function add_tech_effect(tech_name, effect)
  local tech = data.raw.technology[tech_name]
  tech.effects = tech.effects or {}
  table.insert(tech.effects, effect)
end

if mods["Muria"] and not mods["Paracelsin"] then 
add_tech_effect("fluorite-processing", { type = "unlock-recipe", recipe = "hydrogen-fluoride"})
elseif  not mods["Muria"] and mods["Paracelsin"] then
add_tech_effect("zinc-extraction", { type = "unlock-recipe", recipe = "hydrogen-fluoride"})
elseif mods["Muria"] and mods["Paracelsin"] then
    add_tech_effect("zinc-extraction", { type = "unlock-recipe", recipe = "hydrogen-fluoride"})
end