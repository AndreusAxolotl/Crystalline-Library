local sounds = {}

sounds.asteroid_collision_crystalline_small = {
  category = "game-effect",
  variations = sound_variations("__space-age__/sound/entity/asteroid/asteroid-collision-metallic-small", 6, 0.3),
  aggregation = {max_count = 3, remove = true, count_already_playing = true},
  audible_distance_modifier = 0.75
}
sounds.asteroid_damage_crystalline_small = {
  category = "game-effect",
  variations = sound_variations("__space-age__/sound/entity/asteroid/asteroid-damage-metallic-small", 6, 0.5),
  aggregation = {max_count = 3, remove = true, count_already_playing = true},
  audible_distance_modifier = 0.75
}
sounds.asteroid_damage_crystalline_medium = {
  category = "game-effect",
  variations = sound_variations("__space-age__/sound/entity/asteroid/asteroid-damage-metallic-medium", 5, 0.45),
  aggregation = {max_count = 3, remove = true, count_already_playing = true},
}
sounds.asteroid_damage_crystalline_big = {
  category = "game-effect",
  variations = sound_variations("__space-age__/sound/entity/asteroid/asteroid-damage-metallic-big", 4, 0.5),
  aggregation = {max_count = 2, remove = true, count_already_playing = true},
}
sounds.asteroid_damage_crystalline_huge = {
  category = "game-effect",
  variations = sound_variations("__space-age__/sound/entity/asteroid/asteroid-damage-metallic-huge", 3, 0.7),
  aggregation = {max_count = 2, remove = true, count_already_playing = true},
  audible_distance_modifier = 2
}

return sounds