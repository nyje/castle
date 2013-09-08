minetest.register_node("castle:pillars_bottom",{
	description = "Pillar Bottom",
	tiles = {"castle_stonewall.png"},
	drawtype="nodebox",
	paramtype = "light",
	groups = {cracky=3,attached_node=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.500000,-0.500000,0.500000,-0.375000,0.500000},
			{-0.375000,-0.375000,-0.375000,0.375000,-0.125000,0.375000},
			{-0.250000,-0.125000,-0.250000,0.250000,0.500000,0.250000}, 
		},
	},
})

minetest.register_craft({
	output = "castle:pillars_bottom 4",
	recipe = {
		{"","castle:stonewall",""},
		{"","castle:stonewall",""},
		{"castle:stonewall","castle:stonewall","castle:stonewall"},
	}
})

minetest.register_node("castle:pillars_top",{
	description = "Pillar Top",
	tiles = {"castle_stonewall.png"},
	drawtype="nodebox",
	paramtype = "light",
	groups = {cracky=3,attached_node=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.500000,0.312500,-0.500000,0.500000,0.500000,0.500000}, 
			{-0.375000,0.062500,-0.375000,0.375000,0.312500,0.375000}, 
			{-0.250000,-0.500000,-0.250000,0.250000,0.062500,0.250000},
		},
	},
})

minetest.register_craft({
	output = "castle:pillars_top 4",
	recipe = {
		{"castle:stonewall","castle:stonewall","castle:stonewall"},
		{"","castle:stonewall",""},
		{"","castle:stonewall",""},
	}
})


minetest.register_node("castle:pillars_middle",{
	description = "Pillar Middle",
	tiles = {"castle_stonewall.png"},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {cracky=3,attached_node=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.250000,-0.500000,-0.250000,0.250000,0.500000,0.250000},
		},
	},
})

minetest.register_craft({
	output = "castle:pillars_middle 2",
	recipe = {
		{"castle:stonewall","castle:stonewall"},
		{"castle:stonewall","castle:stonewall"},
		{"castle:stonewall","castle:stonewall"},
	}
})