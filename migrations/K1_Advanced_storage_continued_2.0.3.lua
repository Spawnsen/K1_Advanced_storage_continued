for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes
  
  	 if recipes["k-medium-s"].enabled then 
  	 		technologies["k1v-simple-logistic-chest"].researched = true
  	 end
end
