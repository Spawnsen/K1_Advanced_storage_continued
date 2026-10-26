if mods ["space-age"] then
		data.raw.technology["k1v-advanced-logistic-chest"].unit.ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
 				{"space-science-pack", 1}
			}
		local containers = -- prototype type -> list[prototype name]
			{
  			container = {"k-medium-g", "k-big-g"},
  			["logistic-container"] = {"k-medium-s", "k-medium-b", "k-medium-r", "k-medium-ap", "k-medium-pp", "k-big-s", "k-big-b", "k-big-r", "k-big-ap", "k-big-pp"}
			}
		for t,l in pairs(containers) do
  		for _,n in pairs(l) do
    		data.raw[t][n].surface_conditions =
    		{
      		{
       			property = "gravity",
        		min = 0.1
     		  }
    			}
  		end
		end
end