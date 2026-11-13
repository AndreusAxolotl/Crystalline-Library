local vateritereq 
if mods["Muria"] and not mods["Paracelsin"] then 
vateritereq = { "planet-discovery-muria" }
elseif  not mods["Muria"] and mods["Paracelsin"] then
vateritereq = { "planet-discovery-paracelsin" }
elseif mods["Muria"] and mods["Paracelsin"] then
    vateritereq = { "planet-discovery-muria" }
end

local vateriteprodreq 
if mods["Muria"] and not mods["Paracelsin"] then 
vateriteprodreq = { "acidworking-science-pack" }
elseif  not mods["Muria"] and mods["Paracelsin"] then
vateriteprodreq = { "galvanization-science-pack" }
elseif mods["Muria"] and mods["Paracelsin"] then
    vateriteprodreq = { "acidworking-science-pack", "galvanization-science-pack" }
end

local fluoritereq 
if mods["Muria"] and not mods["Paracelsin"] then 
fluoritereq = { "advanced-acid-processing" , "advanced-asteroid-processing"}
elseif  not mods["Muria"] and mods["Paracelsin"] then
fluoritereq = { "planet-discovery-paracelsin"}
elseif mods["Muria"] and mods["Paracelsin"] then
    fluoritereq = { "advanced-acid-processing" , "advanced-asteroid-processing"}
end

local vateriteproding 
if mods["Muria"] and not mods["Paracelsin"] then 
vateriteproding = {
        { "automation-science-pack",               1 },
        { "logistic-science-pack",                 1 },
        { "chemical-science-pack",                 1 },
        { "production-science-pack",               1 },
        { "space-science-pack",                    1 },
        { "acidworking-science-pack", 1 }
      }
elseif  not mods["Muria"] and mods["Paracelsin"] then
vateriteproding = {
        { "automation-science-pack",               1 },
        { "logistic-science-pack",                 1 },
        { "chemical-science-pack",                 1 },
        { "production-science-pack",               1 },
        { "space-science-pack",                    1 },
        { "galvanization-science-pack", 1 }
      }
elseif mods["Muria"] and mods["Paracelsin"] then
    vateriteproding = {
        { "automation-science-pack",               1 },
        { "logistic-science-pack",                 1 },
        { "chemical-science-pack",                 1 },
        { "production-science-pack",               1 },
        { "space-science-pack",                    1 },
        { "acidworking-science-pack", 1 },
        { "galvanization-science-pack", 1 }
      }
end

local pgalkreq
if mods["Muria"] and not mods["Paracelsin"] then 
pgalkreq = { "acidworking-science-pack", "fluorite-processing" }
elseif  not mods["Muria"] and mods["Paracelsin"] then
pgalkreq = {"galvanization-science-pack", "fluorite-processing" }
elseif mods["Muria"] and mods["Paracelsin"] then
    pgalkreq = { "acidworking-science-pack", "galvanization-science-pack", "fluorite-processing",}
end

local fureq
if mods["Muria"] and not mods["Paracelsin"] then 
fureq = { "acidworking-science-pack", "fluorite-processing", "kovarex-enrichment-process" }
elseif  not mods["Muria"] and mods["Paracelsin"] then
fureq = {"galvanization-science-pack", "fluorite-processing", "kovarex-enrichment-process" }
elseif mods["Muria"] and mods["Paracelsin"] then
    fureq = { "acidworking-science-pack", "galvanization-science-pack", "fluorite-processing", "kovarex-enrichment-process" }
end

data:extend {
    {
    type = "technology",
    name = "vaterite-processing",
    icon = "__Crystalline-Library__/graphics/technology/vaterite-processing.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vaterite-processing"
      },
    },
    prerequisites = vateritereq,
    research_trigger =
    {
      type = "craft-item",
      item = "vaterite",
    }
  },
  {
    type = "technology",
    name = "vaterite-processing-productivity",
    icons = util.technology_icon_constant_recipe_productivity("__Crystalline-Library__/graphics/technology/vaterite-processing-prod.png"),

    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "vaterite-processing",
        change = 0.1
      },
    },
    prerequisites = vateriteprodreq,
    unit =
    {
      count_formula = "1.5^L*500",      
      ingredients = vateriteproding,
      time = 60
    },
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "fluorite-processing",
    icon = "__Crystalline-Library__/graphics/technology/fluorite-processing.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fluorite-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "hydrogen-fluoride-electrolysis"
      }, 
      {
        type = "unlock-recipe",
        recipe = "lubricant-from-fluorine"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-hydrogen"
      },
    },
    prerequisites = fluoritereq,
    research_trigger =
    {
      type = "craft-item",
      item = "fluorite",
    }
  },
  {
    type = "technology",
    name = "petroleum-gas-alkylation",
    icon = "__Crystalline-Library__/graphics/technology/petroleum-gas-alkylation.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "petroleum-gas-alkylation"
      },
    },
    prerequisites = pgalkreq,
    unit =
    {
      count_formula = "1000",      
      ingredients = vateriteproding,
      time = 60
    },
  },
  {
    type = "technology",
    name = "fluorinated-uranium-processing",
    icon = "__Crystalline-Library__/graphics/technology/fluorinated-uranium-processing.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "uranium-fluorination"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-hexafluoride-centrifuging"
      },
    },
    prerequisites = fureq,
    unit =
    {
      count_formula = "1000",      
      ingredients = vateriteproding,
      time = 60
    },
  },
}

local function add_tech_prerequisites(tech_name, prerequisites)
  local tech = data.raw.technology[tech_name]
  tech.prerequisites = tech.prerequisites or {}
  for _, prereq in ipairs(tech.prerequisites) do
    if prereq == prerequisites then
      return
    end
  end
  table.insert(tech.prerequisites, prerequisites)
end


local function add_science_pack(tech_name, science_pack)
  local tech = data.raw.technology[tech_name]
  -- If `tech.unit` doesn't exist then it is a trigger tech rather than a science tech, cannot modify it in this way
  if tech.unit then
    tech.unit.ingredients = tech.unit.ingredients or {}
    table.insert(tech.unit.ingredients, science_pack)
  else
    log("Crystalline Library: Unable to add science to tech `" .. tech_name .. "` due to it being a trigger technology, skipped.")
  end
end
local function add_tech_effect(tech_name, effect)
  local tech = data.raw.technology[tech_name]
  tech.effects = tech.effects or {}
  table.insert(tech.effects, effect)
end

add_tech_effect("space-platform", { type = "unlock-recipe", recipe = "crystalline-asteroid-crushing"})
add_tech_effect("advanced-asteroid-processing", { type = "unlock-recipe", recipe = "advanced-crystalline-asteroid-crushing"})
add_tech_effect("asteroid-reprocessing", { type = "unlock-recipe", recipe = "crystalline-asteroid-reprocessing"})

add_tech_effect("asteroid-productivity", { type = "change-recipe-productivity", recipe = "crystalline-asteroid-crushing", change = 0.1})
add_tech_effect("asteroid-productivity", { type = "change-recipe-productivity", recipe = "advanced-crystalline-asteroid-crushing", change = 0.1})