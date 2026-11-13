local hfing
if mods["Muria"] and not mods["Paracelsin"] then 
hfing = {{type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "fluorine", amount = 50},
    {type = "item", name = "copper-plate", amount = 1},}
elseif  not mods["Muria"] and mods["Paracelsin"] then
hfing = {{type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "fluorine", amount = 50},
    {type = "item", name = "zinc-plate", amount = 1},}
elseif mods["Muria"] and mods["Paracelsin"] then
    hfing = {{type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "fluorine", amount = 50},
    {type = "item", name = "zinc-plate", amount = 1},}
end

local pgalkcat
if mods["Muria"] and not mods["Paracelsin"] then 
pgalkcat = {"cryogenics"}
elseif  not mods["Muria"] and mods["Paracelsin"] then
pgalkcat = {"cryogenics", "electrochemistry"}
elseif mods["Muria"] and mods["Paracelsin"] then
    pgalkcat = {"cryogenics", "electrochemistry"}
end

data:extend{
    {
    type = "recipe",
    name = "vaterite-processing",
    enabled = false,
    subgroup = "vaterite-fluorite",
    order = "c",
    icon = "__Crystalline-Library__/graphics/icons/vaterite-processing.png",
    icon_size = 64,
    energy_required = 1.5,
    ingredients = {
        {type = "fluid", name = "water",   amount = 10},
        {type = "item", name = "vaterite",       amount = 3},
    },
    results = {
        {type = "item", name = "calcite", amount = 1},
        {type = "item", name = "carbon", amount = 2},
    },
    allow_productivity = true,
    categories = {"chemistry"},
    auto_recycle = true,
},
 {
    type = "recipe",
    name = "crystalline-asteroid-crushing",
    icon = "__Crystalline-Library__/graphics/icons/crystalline-asteroid-crushing.png",
    categories = {"crushing"},
    subgroup="space-crushing",
    order = "b-a-b",
    auto_recycle = false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "crystalline-asteroid-chunk", amount = 1, ignored_by_stats = 1},
    },
    energy_required = 2,
    results =
    {
      {type = "item", name = "vaterite", amount = 9},
      {type = "item", name = "crystalline-asteroid-chunk", amount = 1, independent_probability = 0.3, ignored_by_stats = 1}
    },
    allow_productivity = true,
    allow_decomposition = false
  },
  {
    type = "recipe",
    name = "advanced-crystalline-asteroid-crushing",
    localised_name = {"recipe-name.advanced-crystalline-asteroid-crushing"},
    icon = "__Crystalline-Library__/graphics/icons/advanced-crystalline-asteroid-crushing.png",
    categories = {"crushing"},
    subgroup="space-crushing",
    order = "e[advanced-crystalline-asteroid-crushing]",
    auto_recycle = false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "crystalline-asteroid-chunk", amount = 1, ignored_by_stats = 1}
    },
    energy_required = 5,
    results =
    {
      {type = "item", name = "vaterite", amount = 6},
      {type = "item", name = "fluorite", amount = 4},
      {type = "item", name = "crystalline-asteroid-chunk", amount = 1, independent_probability = 0.1, ignored_by_stats = 1}
    },
    allow_productivity = true,
    allow_decomposition = false
  },
  {
    type = "recipe",
    name = "crystalline-asteroid-reprocessing",
    icon = "__Crystalline-Library__/graphics/icons/crystalline-asteroid-reprocessing.png",
    categories = {"crushing"},
    subgroup="space-crushing",
    order = "b-b-b",
    auto_recycle = false,
    enabled = false,
    ingredients = {{type = "item", name = "crystalline-asteroid-chunk", amount = 1, ignored_by_stats = 1}},
    energy_required = 2,
    results =
    {
      {type = "item", name = "crystalline-asteroid-chunk", amount = 1, shared_probability = { min = 0.0, max = 0.4 }, ignored_by_stats = 1},
      {type = "item", name = "carbonic-asteroid-chunk", amount = 1, shared_probability = { min = 0.4, max = 0.5 }},
      {type = "item", name = "oxide-asteroid-chunk",    amount = 1, shared_probability = { min = 0.5, max = 0.8 }}
    },
    allow_productivity = false,
    allow_quality = false,
    allow_decomposition = false
  },
  {
    type = "recipe",
    name = "fluorite-processing",
    enabled = false,
    subgroup = "vaterite-fluorite",
    order = "d",
    icon = "__Crystalline-Library__/graphics/icons/fluorite-processing.png",
    icon_size = 64,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid",   amount = 10},
        {type = "item", name = "fluorite",       amount = 2},
    },
    results = {
        {type = "fluid", name = "hydrogen-fluoride", amount = 50},
    },
    allow_productivity = true,
    categories = {"chemistry"},
    auto_recycle = true,
},
{
    type = "recipe",
    name = "hydrogen-fluoride-electrolysis",
    enabled = false,
    subgroup = "vaterite-fluorite",
    order = "e",
    icon = "__Crystalline-Library__/graphics/icons/hydrogen-fluoride-electrolysis.png",
    icon_size = 64,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "hydrogen-fluoride",   amount = 200},
        {type = "item", name = "calcite",       amount = 1},
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 25},
        {type = "fluid", name = "fluorine", amount = 25},
    },
    allow_productivity = true,
    categories = {"chemistry"},
    auto_recycle = true,
},
{
    type = "recipe",
    name = "hydrogen-fluoride",
    enabled = false,
    icon = "__Crystalline-Library__/graphics/icons/hydrogen-fluoride.png",
    icon_size = 64,
    energy_required = 2,
    ingredients = hfing,
    results = {
        {type = "fluid", name = "hydrogen-fluoride",   amount = 50},
    },
    allow_productivity = true,
    categories = {"chemistry"},
    auto_recycle = true,
},
{
    type = "recipe",
    name = "petroleum-gas-alkylation",
    enabled = false,
    subgroup = "vaterite-fluorite",
    order = "f",
    icon = "__Crystalline-Library__/graphics/icons/petroleum-gas-alkylation.png",
    icon_size = 64,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "petroleum-gas",   amount = 50},
        {type = "fluid", name = "light-oil",   amount = 5},
        {type = "fluid", name = "hydrogen-fluoride",   amount = 25},
    },
    results = {
        {type = "fluid", name = "heavy-oil", amount = 25},
    },
    allow_productivity = true,
    categories = pgalkcat,
    auto_recycle = true,
},
{
    type = "recipe",
    name = "uranium-fluorination",
    energy_required = 10,
    enabled = false,
    auto_recycle = false,
    categories = {"centrifuging"},
    subgroup = "vaterite-fluorite",
    order = "g",
    ingredients = 
    {{type = "item", name = "uranium-ore", amount = 10},
     {type = "fluid", name = "fluorine",   amount = 60},
    },
    icon = "__Crystalline-Library__/graphics/icons/uranium-fluorination.png",
    subgroup = "uranium-processing",
    order = "a[uranium-processing]-a[uranium-processing]-b",
    results =
    {
      {type = "fluid", name = "uranium-hexafluoride",   amount = 60},
    },
    allow_productivity = true
  },
{
    type = "recipe",
    name = "uranium-hexafluoride-centrifuging",
    energy_required = 2,
    enabled = false,
    auto_recycle = false,
    subgroup = "vaterite-fluorite",
    order = "h",
    categories = {"centrifuging"},
    ingredients = 
    {
     {type = "fluid", name = "uranium-hexafluoride",   amount = 10},
    },
    icon = "__Crystalline-Library__/graphics/icons/uranium-hexafluoride-centrifuging.png",
    subgroup = "uranium-processing",
    order = "a[uranium-processing]-a[uranium-processing]-b",
    results =
    {
      {
        type = "item",
        name = "uranium-235",
        shared_probability = { min = 0, max = 0.007 },
        amount = 1
      },
      {
        type = "item",
        name = "uranium-238",
        shared_probability = { min = 0.007, max = 1 },
        amount = 1
      }
    },
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "solid-fuel-from-hydrogen",
    enabled = false,
    subgroup = "vaterite-fluorite",
    order = "i",
    icon = "__Crystalline-Library__/graphics/icons/solid-fuel-from-hydrogen.png",
    icon_size = 64,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "hydrogen",   amount = 50},
        {type = "item", name = "coal", amount = 2},
    },
    results = {
        {type = "item", name = "solid-fuel", amount = 2}
    },
    allow_productivity = true,
    categories = {"chemistry"},
    auto_recycle = false,
    crafting_machine_tint =
    {
        primary = {r = 0.40, g = 0.55, b = 0.71, a = 1.000},
        secondary = {r = 0.40, g = 0.55, b = 0.71, a = 1.000},
        tertiary = {r = 0.40, g = 0.55, b = 0.71, a = 1.000},
        quaternary = {r = 0.40, g = 0.55, b = 0.71, a = 1.000},
    }
},
{
    type = "recipe",
    name = "lubricant-from-fluorine",
    enabled = false,
    subgroup = "vaterite-fluorite",
    order = "j",
    icon = "__Crystalline-Library__/graphics/icons/lubricant-from-fluorine.png",
    icon_size = 64,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "fluorine",       amount = 10},
        {type = "item", name = "carbon", amount = 5},
    },
    results = {
        {type = "fluid", name = "lubricant", amount = 20}
    },
    allow_productivity = true,
    categories = {"chemistry"},
    auto_recycle = false,
},
}