-- SPDX-License-Identifier: GPL-3.0-only
-- A new mod ID runs the inherited migrations again. Restore all twelve recipe
-- unlocks from the preserved research state after those older migrations.
local chest_technologies = {
  "k1v-chest",
  "k1v-simple-logistic-chest",
  "k1v-advanced-logistic-chest"
}

for _, force in pairs(game.forces) do
  for _, name in ipairs(chest_technologies) do
    local technology = force.technologies[name]
    if technology then
      for _, effect in pairs(technology.prototype.effects) do
        if effect.type == "unlock-recipe" and force.recipes[effect.recipe] then
          force.recipes[effect.recipe].enabled = technology.researched
        end
      end
    end
  end
end
