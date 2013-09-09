minetest.register_node("castle:arrowslit_cobble",{
	drawtype= "nodebox",
	description = "Cobble Arrow Slit",
	tiles = {"default_cobble.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	groups = {cracky=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.375000,-0.500000,-0.062500,0.375000,-0.312500},
			{0.062500,-0.375000,-0.500000,0.500000,0.375000,-0.312500},
			{-0.500000,0.375000,-0.500000,0.500000,0.500000,-0.312500}, 
			{-0.500000,-0.500000,-0.500000,0.500000,-0.375000,-0.312500}, 
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.500000,-0.500000,0.500000,0.500000,-0.312500},
		},
	},
})

minetest.register_craft({
	output = "castle:arrowslit_cobble 6",
	recipe = {
		{'castle:stonewall','','castle:stonewall'},
		{'castle:stonewall','','castle:stonewall'},
		{'castle:stonewall','','castle:stonewall'},
	}
})

minetest.register_craft({
	output = "castle:arrowslit_cobble",
	recipe = {
		{'castle:arrowslit_cobble_cross'},
	}
})

minetest.register_node("castle:arrowslit_cobble_hole",{
	drawtype= "nodebox",
	description = "Cobble Arrow Slit with Hole",
	tiles = {"default_cobble.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	groups = {cracky=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.375000,-0.500000,-0.125000,0.375000,-0.312500},
			{0.125000,-0.375000,-0.500000,0.500000,0.375000,-0.312500}, 
			{-0.500000,-0.500000,-0.500000,0.500000,-0.375000,-0.312500}, 
			{0.062500,-0.125000,-0.500000,0.125000,0.375000,-0.312500},
			{-0.125000,-0.125000,-0.500000,-0.062500,0.375000,-0.312500},
			{-0.500000,0.375000,-0.500000,0.500000,0.500000,-0.312500}, 
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.500000,-0.500000,0.500000,0.500000,-0.312500},
		},
	},
})

minetest.register_craft({
	output = "castle:arrowslit_cobble_hole",
	recipe = {
		{'castle:arrowslit_cobble'},
	}
})

minetest.register_node("castle:arrowslit_cobble_cross",{
	drawtype= "nodebox",
	description = "Cobble Arrow Slit with Cross",
	tiles = {"default_cobble.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	groups = {cracky=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.125000,-0.500000,-0.062500,0.375000,-0.312500}, 
			{0.062500,-0.125000,-0.500000,0.500000,0.375000,-0.312500},
			{-0.500000,0.375000,-0.500000,0.500000,0.500000,-0.312500}, 
			{-0.500000,-0.500000,-0.500000,0.500000,-0.375000,-0.312500}, 
			{0.062500,-0.375000,-0.500000,0.500000,-0.250000,-0.312500}, 
			{-0.500000,-0.375000,-0.500000,-0.062500,-0.250000,-0.312500},
			{-0.500000,-0.250000,-0.500000,-0.187500,-0.125000,-0.312500}, 
			{0.187500,-0.250000,-0.500000,0.500000,-0.125000,-0.312500}, 
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.500000,-0.500000,0.500000,0.500000,-0.312500},
		},
	},
})

minetest.register_craft({
	output = "castle:arrowslit_cobble_cross",
	recipe = {
		{'castle:arrowslit_cobble_hole'},
	}
})