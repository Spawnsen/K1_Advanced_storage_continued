data:extend({
	{
		type = "technology",
		name = "k1v-chest",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/technology/k1v-chest.png",
		icon_size = 128,
		effects =
			{
				{ type = "unlock-recipe",	recipe = "k-medium-g"},
				{	type = "unlock-recipe",	recipe = "k-big-g"}
			},
		prerequisites = {"logistic-science-pack", "steel-processing"},
		unit =
			{
				count = 100,
				ingredients =
					{
						{"automation-science-pack", 1},
						{"logistic-science-pack", 1}
					},
				time = 15
			},
	},
--
	{
		type = "technology",
		name = "k1v-simple-logistic-chest",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/technology/k1v-chest.png",
		icon_size = 128,
		effects =
		{
			{ type = "unlock-recipe",	recipe = "k-medium-s" },
			{	type = "unlock-recipe",	recipe = "k-medium-pp" },
			{	type = "unlock-recipe",	recipe = "k-big-s" },
			{	type = "unlock-recipe",	recipe = "k-big-pp"	} 
		},	
		prerequisites = {"k1v-chest", "construction-robotics"},
		unit =
		{
			count = 150,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 30
		}
	},
--
	{
		type = "technology",
		name = "k1v-advanced-logistic-chest",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/technology/k1v-advanced-logistic-chest.png",
		icon_size = 128,
		effects =
		{
			{	type = "unlock-recipe",	recipe = "k-medium-b"	},
			{	type = "unlock-recipe",	recipe = "k-medium-r"	},
			{	type = "unlock-recipe",	recipe = "k-medium-ap" },
			{	type = "unlock-recipe",	recipe = "k-big-b" },
			{	type = "unlock-recipe",	recipe = "k-big-r" },
			{	type = "unlock-recipe",	recipe = "k-big-ap"	},
		},	
		prerequisites = {"k1v-simple-logistic-chest", "logistic-system"},
		unit =
		{
			count = 300,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 30
		}
	}	
})