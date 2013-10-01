minetest.register_alias("darkage:box", "castle:crate")
minetest.register_alias("cottages:straw", "castle:straw")
minetest.register_alias("cottages:straw_bale", "castle:bound_straw")
minetest.register_alias("darkage:straw", "castle:straw")
minetest.register_alias("darkage:straw_bale", "castle:bound_straw")
minetest.register_alias("darkage:lamp", "castle:street_light")


minetest.register_node("castle:anvil",{
	drawtype = "nodebox",
	description = "Anvil",
	tiles = {"castle_steel.png"},
	groups = {cracky=2,falling_node=1},
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.500000,-0.500000,-0.500000,0.500000,-0.250000,0.500000},
			{-0.187500,-0.500000,-0.375000,0.187500,0.312500,0.375000}, 
			{-0.375000,-0.500000,-0.437500,0.375000,-0.125000,0.437500}, 
			{-0.500000,0.312500,-0.500000,0.500000,0.500000,0.500000}, 
			{-0.375000,0.187500,-0.437500,0.375000,0.425000,0.437500}, 
		},
	},
})

minetest.register_craft({
	output = "castle:anvil",
	recipe = {
		{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
		{"","default:steel_ingot", ""},
		{"default:steel_ingot", "default:steel_ingot","default:steel_ingot"},
	}
})

minetest.register_node("castle:workbench",{
	description = "Workbench",
	tiles = {"castle_workbench_top.png", "default_wood.png", "castle_workbench_1.png", "castle_workbench_1.png", "castle_workbench_2.png", "castle_workbench_2.png"},
	paramtype2 = "facedir",
	paramtype = "light",
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=2},
	drawtype = "normal",
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				"list[current_name;main;0,1;8,4;]"..
				"list[current_player;main;0,5;8,4;]")
		meta:set_string("infotext", "Workbench")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*3)
       		local IStack = ItemStack( 'default:pick_steel 1' )
		inv:add_item( 'main', IStack )
       		local IStack = ItemStack( 'default:shovel_steel 1' )
		inv:add_item( 'main', IStack )
       		local IStack = ItemStack( 'default:axe_steel 1' )
		inv:add_item( 'main', IStack )
       		local IStack = ItemStack( 'default:sword_steel 1' )
		inv:add_item( 'main', IStack )
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in workbench at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to workbench at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from workbench at "..minetest.pos_to_string(pos))
	end,
})

local function has_locked_chest_privilege(meta, player)
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	end
	return true
end


minetest.register_craft({
	output = "castle:workbench",
	recipe = {
		{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
		{"default:wood", "default:wood","default:steel_ingot"},
		{"default:tree", "default:tree","default:steel_ingot"},
	}
})

minetest.register_node("castle:dungeon_stone", {
	description = "Dungeon Stone",
	drawtype = "normal",
	tiles = {"castle_dungeon_stone.png"},
	groups = {cracky=2},
	paramtype = "light",
})

minetest.register_craft({
	output = "castle:dungeon_stone",
	recipe = {
		{"castle:pavement", "default:obsidian"},
	}
})

minetest.register_craft({
	output = "castle:dungeon_stone",
	recipe = {
		{"castle:pavement"},
		{"default:obsidian"},

	}
})

minetest.register_node("castle:crate", {
	description = "Crate",
	drawtype = "normal",
	tiles = {"castle_crate_top.png","castle_crate_top.png","castle_crate.png","castle_crate.png","castle_crate.png","castle_crate.png"},
	groups = {choppy=3},
	paramtype = "light",
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				"list[current_name;main;0,1;8,4;]"..
				"list[current_player;main;0,5;8,4;]")
		meta:set_string("infotext", "Crate")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*3)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in crate at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to crate at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from crate at "..minetest.pos_to_string(pos))
	end,
})

local function has_locked_chest_privilege(meta, player)
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	end
	return true
end

minetest.register_craft({
	output = "castle:crate",
	recipe = {
		{"default:wood", "default:wood", "default:wood"},
		{"default:wood", "default:steel_ingot", "default:wood"},
	}
})

minetest.register_node("castle:straw", {
	description = "Straw",
	drawtype = "normal",
	tiles = {"castle_straw.png"},
	groups = {choppy=4, flammable=1, oddly_breakable_by_hand=3},
	paramtype = "light",
})

minetest.register_craft({
	output = "castle:straw",
	recipe = {
		{"default:grass_1", "default:grass_1"},
		{"default:grass_1", "default:grass_1"},
	}
})

minetest.register_node("castle:bound_straw", {
	description = "Bound Straw",
	drawtype = "normal",
	tiles = {"castle_straw_bale.png"},
	groups = {choppy=4, flammable=1, oddly_breakable_by_hand=3},
	paramtype = "light",
})

minetest.register_craft({
	output = "castle:bound_straw",
	recipe = {
		{"castle:straw", "castle:ropes"},
	}
})

stairs.register_stair_and_slab("straw", "castle:straw",
		{choppy=3, flammable=1, oddly_breakable_by_hand=3},
		{"castle_straw.png"},
		"Castle Straw Stair",
		"Castle Straw Slab",
		default.node_sound_leaves_defaults())

minetest.register_node("castle:pavement", {
	description = "Paving Stone",
	drawtype = "normal",
	tiles = {"castle_pavement_brick.png"},
	groups = {cracky=2},
	paramtype = "light",
})

minetest.register_craft({
	output = "castle:pavement",
	recipe = {
		{"default:stone", "default:cobble"},
		{"default:cobble", "default:stone"},
	}
})


minetest.register_node("castle:light",{
	drawtype = "glasslike",
	sunlight_propagates = true,
	light_source = 14,
	tiles = {"castle_street_light.png"},
	groups = {cracky=2},
	paramtype = "light",
})

minetest.register_craft({
	output = "castle:light",
	recipe = {
		{"default:stick", "default:glass", "default:stick"},
		{"default:glass", "default:torch", "default:glass"},
		{"default:stick", "default:glass", "default:stick"},
	}
})

minetest.register_node("castle:ropes",{
	description = "Rope",
	drawtype = "nodebox",
	sunlight_propagates = true,
	tiles = {"castle_ropes.png"},
	groups = {choppy=2},
	paramtype = "light",
	climbable = true,
	walkable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.062500,-0.500000,-0.062500,0.000000,0.500000,0.000000}, 
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.062500,-0.500000,-0.062500,0.000000,0.500000,0.000000}, 
		},
	},
})
