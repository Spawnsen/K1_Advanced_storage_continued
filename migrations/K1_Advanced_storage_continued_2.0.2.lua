for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes
  	recipes["k-medium-g"].enabled = technologies["k1v-chest"].researched
  	recipes["k-medium-s"].enabled = technologies["k1v-advanced-logistic-chest"].researched
end
