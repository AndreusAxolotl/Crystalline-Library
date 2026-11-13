local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")

local vateriteimport
if mods["Muria"] and not mods["Paracelsin"] then 
vateriteimport = "muria"
elseif  not mods["Muria"] and mods["Paracelsin"] then
vateriteimport = "paracelsin"
elseif mods["Muria"] and mods["Paracelsin"] then
    vateriteimport = "paracelsin"
end

data:extend{
  {
    type = "item-subgroup",
    name = "vaterite-fluorite",
    group = "intermediate-products",
    order = "q-a-a"
  },
    {
    type = "item",
    name = "vaterite",
    subgroup = "vaterite-fluorite",
    order = "a",
    icon = "__Crystalline-Library__/graphics/icons/vaterite-1.png",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    pictures =
        {
          { size = 64, filename = "__Crystalline-Library__/graphics/icons/vaterite-1.png",   scale = 0.5},
          { size = 64, filename = "__Crystalline-Library__/graphics/icons/vaterite-2.png", scale = 0.5},
          { size = 64, filename = "__Crystalline-Library__/graphics/icons/vaterite-3.png", scale = 0.5},
        },
    icon_size = 64,
    stack_size = 50,
    default_import_location = vateriteimport,
    weight = 10000,
},
{
  type = "item",
  name = "crystalline-asteroid-chunk",
  icon = "__Crystalline-Library__/graphics/icons/crystalline-asteroid-chunk.png",
  subgroup = "space-material",
  order = "bc",
  inventory_move_sound = item_sounds.rock_inventory_move,
  pick_sound = item_sounds.rock_inventory_pickup,
  drop_sound = item_sounds.rock_inventory_move,
  stack_size = 1,
  weight = 100 * kg,
},
{
    type = "item",
    name = "fluorite",
    subgroup = "vaterite-fluorite",
    order = "b",
    icon = "__Crystalline-Library__/graphics/icons/fluorite.png",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    icon_size = 64,
    stack_size = 50,
    default_import_location = vateriteimport,
    weight = 10000,
},
{
    type = "fluid",
    name = "hydrogen-fluoride",
    subgroup = "fluid",
    default_temperature = -83,
    max_temperature = 19,
    base_color = {0.16, 0.43, 0.29},
    flow_color = {0.16, 0.43, 0.29},
    icon = "__Crystalline-Library__/graphics/icons/hydrogen-fluoride.png",
    auto_barrel = true
  },
{
    type = "fluid",
    name = "uranium-hexafluoride",
    subgroup = "fluid",
    default_temperature = 55,
    base_color = {0.16, 0.65, 0.30},
    flow_color = {0.16, 0.65, 0.30},
    icon = "__Crystalline-Library__/graphics/icons/uranium-hexafluoride.png",
    auto_barrel = false
  },
    {
    type = "fluid",
    name = "hydrogen",
    subgroup = "fluid",
    default_temperature = 0,
    max_temperature = 200,
    base_color = {1, 1, 1},
    flow_color = {1, 1, 1},
    icon = "__Crystalline-Library__/graphics/icons/hydrogen.png",
    auto_barrel = true
  },}

data.raw.fluid["fluorine"].icon = "__Crystalline-Library__/graphics/icons/fluorine.png"