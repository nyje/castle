minetest.register_node("castle:arrowslit",{
	drawtype= "nodebox",
	description = "Arrow Slit",
	tiles = {"castle_stonewall.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
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
	output = "castle:arrowslit 6",
	recipe = {
		{'castle:stonewall','','castle:stonewall'},
		{'castle:stonewall','','castle:stonewall'},
		{'castle:stonewall','','castle:stonewall'},
	}
})

minetest.register_craft({
	output = "castle:arrowslit",
	recipe = {
		{'castle:arrowslit_cross'},
	}
})

minetest.register_node("castle:arrowslit_hole",{
	drawtype= "nodebox",
	description = "Arrow Slit with Hole",
	tiles = {"castle_stonewall.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
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
	output = "castle:arrowslit_hole",
	recipe = {
		{'castle:arrowslit'},
	}
})

minetest.register_node("castle:arrowslit_cross",{
	drawtype= "nodebox",
	description = "Arrow Slit with Cross",
	tiles = {"castle_stonewall.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
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
	output = "castle:arrowslit_cross",
	recipe = {
		{'castle:arrowslit_hole'},
	}
})