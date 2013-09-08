dofile(minetest.get_modpath("castle").."/pillars.lua")
dofile(minetest.get_modpath("castle").."/arrowslit.lua")
dofile(minetest.get_modpath("castle").."/tapestry.lua")

minetest.register_node("castle:stonewall", {
	description = "Castle Wall",
	drawtype = normal,
	tiles = {"castle_stonewall.png"},
	paramtype = light,
	drop = "castle:rubble",
	groups = {cracky=3},
	
})

minetest.register_node("castle:rubble", {
	description = "Castle Rubble",
	drawtype = normal,
	tiles = {"castle_rubble.png"},
	paramtype = light,
	groups = {crumbly=3},
})

minetest.register_craft({
	output = "castle:stonewall",
	recipe = {
		{"default:cobble"},
		{"default:desert_stone"},
	}
})

minetest.register_craft({
	output = "castle:rubble",
	recipe = {
		{"castle:stonewall"},
	}
})

minetest.register_craft({
	output = "castle:rubble 2",
	recipe = {
		{"default:gravel"},
		{"default:desert_stone"},
	}
})

minetest.register_node("castle:stonewall_corner", {
	drawtype = normal,
	paramtype = light,
	paramtype2 = "facedir",
	description = "Castle Corner",
	tiles = {"castle_stonewall.png", 
	                  "castle_stonewall.png",
			"castle_corner_stonewall1.png", 
			"castle_stonewall.png", 
			"castle_stonewall.png", 
			"castle_corner_stonewall2.png"},
	groups = {cracky=3},
})

minetest.register_craft({
	output = "castle:stonewall_corner",
	recipe = {
		{"", "castle:stonewall"},
		{"castle:stonewall", "default:sandstone"},
	}
})

minetest.register_node("castle:roofslate", {
	drawtype = "raillike",
	description = "Roof Slates",
	paramtype = "light",
	walkable = false,
	tiles = {'castle_slate.png'},
	climbable = true,
	selection_box = {
		type = "fixed",
                fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	groups = {cracky=3,attached_node=1},
})

minetest.register_node("castle:hides", {
	drawtype = "signlike",
	description = "Hides",
	paramtype = "light",
	walkable = false,
	tiles = {'castle_hide.png'},
	climbable = true,
	paramtype2 = "wallmounted",
	legacy_wallmounted = true,
	groups = {dig_immediate=2},
	selection_box = {
		type = "wallmounted",
	},
})


minetest.register_craft({
	output = "castle:hides",
	recipe = {
		{"wool:white"},
		{"bucket:bucket_water"},
	}
})


minetest.register_craft( {
         type = "shapeless",
         output = "castle:hides 6",
         recipe = { "wool:white" , "bucket:bucket_water" },
         replacements = {
             { 'bucket:bucket_water', 'bucket:bucket_empty' }
         }
} )

minetest.register_craft({
	type = "cooking",
	output = "castle:roofslate",
	recipe = "default:gravel",
})

stairs.register_stair_and_slab("stonewall", "castle:stonewall",
		{cracky=3},
		{"castle_stonewall.png"},
		"Castle Wall Stair",
		"Castle Wall Slab",
		default.node_sound_stone_defaults())

minetest.register_craft({
	output = "castle:stairs 4",
	recipe = {
		{"castle:stonewall","",""},
		{"castle:stonewall","castle:stonewall",""},
		{"castle:stonewall","castle:stonewall","castle:stonewall"},
	}
})

minetest.register_craft({
	output = "stairs:stair_stonewall 4",
	recipe = {
		{"","","castle:stonewall"},
		{"","castle:stonewall","castle:stonewall"},
		{"castle:stonewall","castle:stonewall","castle:stonewall"},
	}
})

minetest.register_craft({
	output = "stairs:slab_stonewall 6",
	recipe = {
		{"castle:stonewall","castle:stonewall","castle:stonewall"},
	}
})

minetest.register_node("castle:jailbars",{
	drawtype = "nodebox",
	description = "Jailbars",
	tiles = {"castle_steel.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{0.187500,-0.500000,-0.500000,0.412500,0.500000,-0.250000},
			{-0.375000,-0.500000,-0.500000,-0.125000,0.500000,-0.250000},
			{-0.500000,-0.187500,-0.437500,0.500000,0.062500,-0.312500},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{0.187500,-0.500000,-0.500000,0.412500,0.500000,-0.250000},
			{-0.375000,-0.500000,-0.500000,-0.125000,0.500000,-0.250000},
			{-0.500000,-0.187500,-0.437500,0.500000,0.062500,-0.312500},

		},		
	},
})

minetest.register_craft({
	output = "castle:jailbars 3",
	recipe = {
		{"default:steel_ingot","","default:steel_ingot"},
		{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
		{"default:steel_ingot","","default:steel_ingot"},
	}
})

doors:register_door("castle:oak_door", {
	description = "Oak Door",
	inventory_image = "castle_oak_door_inv.png",
	groups = {choppy=2,door=1},
	tiles_bottom = {"castle_oak_door_bottom.png", "door_oak.png"},
	tiles_top = {"castle_oak_door_top.png", "door_oak.png"},
	only_placer_can_open = true,
})

doors:register_door("castle:jail_door", {
	description = "Jail Door",
	inventory_image = "castle_jail_door_inv.png",
	groups = {cracky=2,door=1},
	tiles_bottom = {"castle_jail_door_bottom.png", "door_jail.png"},
	tiles_top = {"castle_jail_door_top.png", "door_jail.png"},
	only_placer_can_open = true,
})

minetest.register_craft({
	output = "castle:oak_door",
	recipe = {
		{"default:tree", "default:tree"},
		{"default:tree", "default:tree"},
		{"default:tree", "default:tree"}
	}
})

minetest.register_craft({
	output = "castle:jail_door",
	recipe = {
		{"castle:jailbars", "castle:jailbars"},
		{"castle:jailbars", "castle:jailbars"},
		{"castle:jailbars", "castle:jailbars"}
	}
})
