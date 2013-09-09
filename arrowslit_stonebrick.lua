minetest.register_node("castle:arrowslit_stonebrick",{
	drawtype= "nodebox",
	description = "Stonebrick Arrow Slit",
	tiles = {"default_stone_brick.png"},
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
	output = "castle:arrowslit_stonebrick 6",
	recipe = {
		{'castle:stonewall','','castle:stonewall'},
		{'castle:stonewall','','castle:stonewall'},
		{'castle:stonewall','','castle:stonewall'},
	}
})

minetest.register_craft({
	output = "castle:arrowslit_stonebrick",
	recipe = {
		{'castle:arrowslit_stonebrick_cross'},
	}
})

minetest.register_node("castle:arrowslit_stonebrick_hole",{
	drawtype= "nodebox",
	description = "Stonebrick Arrow Slit with Hole",
	tiles = {"default_stone_brick.png"},
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
	output = "castle:arrowslit_stonebrick_hole",
	recipe = {
		{'castle:arrowslit_stonebrick'},
	}
})

minetest.register_node("castle:arrowslit_stonebrick_cross",{
	drawtype= "nodebox",
	description = "Stonebrick Arrow Slit with Cross",
	tiles = {"default_stone_brick.png"},
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
	output = "castle:arrowslit_stonebrick_cross",
	recipe = {
		{'castle:arrowslit_stonebrick_hole'},
	}
})