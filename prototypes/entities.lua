data:extend({
	{
		type = "container",
		name = "k-medium-g",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/icons/k_medium_g_icon.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "k-medium-g"},
		max_health = 500,
		corpse = "big-remnants",
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1, -1}, {1, 1}},
		resistances =
			{
				{type = "physical",percent = 30},
				{type = "fire",percent = 50},
				{type = "impact",percent = 50}
			},
		fast_replaceable_group = "container",
		inventory_size = settings.startup["m_chest_inventory_size"].value,
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		impact_category = "metal",
		picture =
		{
			filename = "__Spawnsen_K1_Advanced_Storage__/graphics/chests/hr-k-medium-g.png",
			priority = "extra-high",
			width = 340,
			height = 340,
			scale = 0.25
		},
		circuit_connector = circuit_connector_definitions["chest"],
		circuit_wire_max_distance = default_circuit_wire_max_distance,
		se_allow_in_space = true
	},	
--
	{
		type = "logistic-container",
		name = "k-medium-s",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/icons/k_medium_s_icon.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "k-medium-s"},
		max_health = 500,
		max_logistic_slots = 1,
		corpse = "medium-remnants",
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1, -1}, {1, 1}},
		resistances =
		{
			{type = "physical",percent = 30},
			{type = "fire",percent = 50},
			{type = "impact",percent = 50}
		},
		fast_replaceable_group = "container",
		inventory_size = settings.startup["m_chest_inventory_size"].value,
		logistic_mode = "storage",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		impact_category = "metal",
		robot_door =
		{
			opened_duration = 7,
			animation =
			{
				filename = "__Spawnsen_K1_Advanced_Storage__/graphics/chests/hr-k-medium-s.png",
				priority = "extra-high",
				width = 340,
				height = 340,
				frame_count = 6,
				line_length = 3,
				scale = 0.25
			}
		},
		circuit_connector = circuit_connector_definitions["chest"],
		circuit_wire_max_distance = default_circuit_wire_max_distance,
		se_allow_in_space = true
	},
--
	{
		type = "logistic-container",
		name = "k-medium-b",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/icons/k_medium_b_icon.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "k-medium-b"},
		max_health = 500,
		max_logistic_slots = 18,
		corpse = "medium-remnants",
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1, -1}, {1, 1}},
		resistances =
		{
			{type = "physical",percent = 30},
			{type = "fire",percent = 50},
			{type = "impact",percent = 50}
		},
		fast_replaceable_group = "container",
		inventory_size = settings.startup["m_chest_inventory_size"].value,
		trash_inventory_size = settings.startup["m_chest_trash_inventory_size"].value,
		logistic_mode = "buffer",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		impact_category = "metal",
		robot_door =
		{
			opened_duration = 7,
			animation =
			{
				filename = "__Spawnsen_K1_Advanced_Storage__/graphics/chests/hr-k-medium-b.png",
				priority = "extra-high",
				width = 340,
				height = 340,
				frame_count = 6,
				line_length = 3,
				scale = 0.25
			}
		},
		circuit_connector = circuit_connector_definitions["chest"],
		circuit_wire_max_distance = default_circuit_wire_max_distance,
		se_allow_in_space = true
	},
--
	{
		type = "logistic-container",
		name = "k-medium-r",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/icons/k_medium_r_icon.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "k-medium-r"},
		max_health = 500,
		max_logistic_slots = 18,
		corpse = "medium-remnants",
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1, -1}, {1, 1}},
		resistances =
		{
			{type = "physical",percent = 30},
			{type = "fire",percent = 50},
			{type = "impact",percent = 50}
		},
		fast_replaceable_group = "container",
		inventory_size = settings.startup["m_chest_inventory_size"].value,
		trash_inventory_size = settings.startup["m_chest_trash_inventory_size"].value,
		logistic_mode = "requester",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		impact_category = "metal",
		robot_door =
		{
			opened_duration = 7,
			animation =
			{
				filename = "__Spawnsen_K1_Advanced_Storage__/graphics/chests/hr-k-medium-r.png",
				priority = "extra-high",
				width = 340,
				height = 340,
				frame_count = 6,
				line_length = 3,
				scale = 0.25
			}
		},
		circuit_connector = circuit_connector_definitions["chest"],
		circuit_wire_max_distance = default_circuit_wire_max_distance,
		se_allow_in_space = true
	},
--
	{
		type = "logistic-container",
		name = "k-medium-pp",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/icons/k_medium_pp_icon.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "k-medium-pp"},
		max_health = 500,
		corpse = "medium-remnants",
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1, -1}, {1, 1}},
		resistances =
		{
			{type = "physical",percent = 30},
			{type = "fire",percent = 50},
			{type = "impact",percent = 50}
		},
		fast_replaceable_group = "container",
		inventory_size = settings.startup["m_chest_inventory_size"].value,
		logistic_mode = "passive-provider",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		impact_category = "metal",
		robot_door =
		{
			opened_duration = 7,
			animation =
			{
				filename = "__Spawnsen_K1_Advanced_Storage__/graphics/chests/hr-k-medium-pp.png",
				priority = "extra-high",
				width = 340,
				height = 340,
				frame_count = 6,
				line_length = 3,
				scale = 0.25
			}
		},
		circuit_connector = circuit_connector_definitions["chest"],
		circuit_wire_max_distance = default_circuit_wire_max_distance,
		se_allow_in_space = true
	},
--
	{
		type = "logistic-container",
		name = "k-medium-ap",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/icons/k_medium_pp_icon.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "k-medium-ap"},
		max_health = 500,
		corpse = "medium-remnants",
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1, -1}, {1, 1}},
		resistances =
		{
			{type = "physical",percent = 30},
			{type = "fire",percent = 50},
			{type = "impact",percent = 50}
		},
		fast_replaceable_group = "container",
		inventory_size = settings.startup["m_chest_inventory_size"].value,
		logistic_mode = "active-provider",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		impact_category = "metal",
		robot_door =
		{
			opened_duration = 7,
			animation =
			{
				filename = "__Spawnsen_K1_Advanced_Storage__/graphics/chests/hr-k-medium-ap.png",
				priority = "extra-high",
				width = 340,
				height = 340,
				frame_count = 6,
				line_length = 3,
				scale = 0.25
			}
		},
		circuit_connector = circuit_connector_definitions["chest"],
		circuit_wire_max_distance = default_circuit_wire_max_distance,
		se_allow_in_space = true
	},
--
	{
		type = "container",
		name = "k-big-g",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/icons/k_big_g_icon.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "k-big-g"},
		max_health = 1500,
		corpse = "medium-remnants",
		collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
		selection_box = {{-3, -3}, {3, 3}},
		resistances =
		{
			{type = "physical",percent = 50},
			{type = "fire",percent = 75},
			{type = "impact",percent = 75}
		},
		fast_replaceable_group = "container",
		inventory_size = settings.startup["b_chest_inventory_size"].value,
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		impact_category = "metal",
		picture =
		{
			filename = "__Spawnsen_K1_Advanced_Storage__/graphics/chests/hr-k-big-g.png",
			priority = "extra-high",
			width = 512,
			height = 512,
			scale = 0.5
		},
		circuit_connector = circuit_connector_definitions["chest"],
		circuit_wire_max_distance = 20,
		se_allow_in_space = true
	},
--
	{
		type = "logistic-container",
		name = "k-big-s",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/icons/k_big_s_icon.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "k-big-s"},
		max_health = 1500,
		max_logistic_slots = 1,
		corpse = "medium-remnants",
		collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
		selection_box = {{-3, -3}, {3, 3}},
		resistances =
		{
			{type = "physical",percent = 50},
			{type = "fire",percent = 75},
			{type = "impact",percent = 75}
		},
		fast_replaceable_group = "container",
		inventory_size = settings.startup["b_chest_inventory_size"].value,
		logistic_mode = "storage",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		impact_category = "metal",
		robot_door =
		{
			opened_duration = 7,
			animation =
			{
				filename = "__Spawnsen_K1_Advanced_Storage__/graphics/chests/hr-k-big-s.png",
				priority = "extra-high",
				width = 512,
				height = 512,
				frame_count = 6,
				line_length = 3,
				scale = 0.5
			}
		},
    circuit_connector = circuit_connector_definitions["chest"],
    circuit_wire_max_distance = 20,
    se_allow_in_space = true,
	},

-----------------------------------------------------------------------------------------------------------------

	{
    type = "logistic-container",
    name = "k-big-pp",
    icon = "__Spawnsen_K1_Advanced_Storage__/graphics/icons/k_big_pp_icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "k-big-pp"},
    max_health = 1500,
    corpse = "medium-remnants",
    collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
    selection_box = {{-3, -3}, {3, 3}},
		resistances = 
		{
			{type = "physical",percent = 50},
			{type = "fire",percent = 75},
			{type = "impact",percent = 75}
		},
    fast_replaceable_group = "container",
		inventory_size = settings.startup["b_chest_inventory_size"].value,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		impact_category = "metal",
    robot_door =
    {
    	opened_duration = 7,
    	animation =
    	{
	    	filename = "__Spawnsen_K1_Advanced_Storage__/graphics/chests/hr-k-big-pp.png",
	    	priority = "extra-high",
	    	width = 512,
	    	height = 512,
	    	frame_count = 6,
	    	line_length = 3,
	    	scale = 0.5
    	}
    },
    circuit_connector = circuit_connector_definitions["chest"],
    circuit_wire_max_distance = 20,
    se_allow_in_space = true
	},
--
	{
		type = "logistic-container",
		name = "k-big-r",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/icons/k_big_r_icon.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "k-big-r"},
		max_logistic_slots = 30,
		max_health = 1500,
		corpse = "medium-remnants",
		collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
		selection_box = {{-3, -3}, {3, 3}},
		resistances =
		{
			{type = "physical",percent = 50},
			{type = "fire",percent = 75},
			{type = "impact",percent = 75}
		},
		fast_replaceable_group = "container",
		inventory_size = settings.startup["b_chest_inventory_size"].value,
		trash_inventory_size = settings.startup["b_chest_trash_inventory_size"].value,
		logistic_mode = "requester",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		impact_category = "metal",
		robot_door =
		{
			opened_duration = 7,
			animation =
			{
				filename = "__Spawnsen_K1_Advanced_Storage__/graphics/chests/hr-k-big-r.png",
				priority = "extra-high",
				width = 512,
				height = 512,
				frame_count = 6,
				line_length = 3,
				scale = 0.5
			}
		},
		circuit_connector = circuit_connector_definitions["chest"],
		circuit_wire_max_distance = 20,
		se_allow_in_space = true
	},
--
	{
		type = "logistic-container",
		name = "k-big-b",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/icons/k_big_b_icon.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "k-big-b"},
		max_health = 1500,
		max_logistic_slots = 30,
		corpse = "medium-remnants",
		collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
		selection_box = {{-3, -3}, {3, 3}},
		resistances =
		{
			{type = "physical",percent = 50},
			{type = "fire",percent = 75},
			{type = "impact",percent = 75}
		},
		fast_replaceable_group = "container",
		inventory_size = settings.startup["b_chest_inventory_size"].value,
		trash_inventory_size = settings.startup["b_chest_trash_inventory_size"].value,
		logistic_mode = "buffer",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		impact_category = "metal",
		robot_door =
		{
			opened_duration = 7,
			animation =
			{
				filename = "__Spawnsen_K1_Advanced_Storage__/graphics/chests/hr-k-big-b.png",
				priority = "extra-high",
				width = 512,
				height = 512,
				frame_count = 6,
				line_length = 3,
				scale = 0.5
			}
		},
		circuit_connector = circuit_connector_definitions["chest"],
		circuit_wire_max_distance = 20,
		se_allow_in_space = true
	},
--
	{
		type = "logistic-container",
		name = "k-big-ap",
		icon = "__Spawnsen_K1_Advanced_Storage__/graphics/icons/k_big_ap_icon.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "k-big-ap"},
		max_health = 1500,
		corpse = "medium-remnants",
		collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
		selection_box = {{-3, -3}, {3, 3}},
		resistances =
		{
			{type = "physical",percent = 50},
			{type = "fire",percent = 75},
			{type = "impact",percent = 75}
		},
		fast_replaceable_group = "container",
		inventory_size = settings.startup["b_chest_inventory_size"].value,
		logistic_mode = "active-provider",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		impact_category = "metal",
		robot_door =
		{
			opened_duration = 7,
			animation =
			{
				filename = "__Spawnsen_K1_Advanced_Storage__/graphics/chests/hr-k-big-ap.png",
				priority = "extra-high",
				width = 512,
				height = 512,
				frame_count = 6,
				line_length = 3,
				scale = 0.5
			}
		},
		circuit_connector = circuit_connector_definitions["chest"],
		circuit_wire_max_distance = 20,
		se_allow_in_space = true
	}
})
