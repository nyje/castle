local tapestry = {}
-- This uses a trick: you can first define the recipes using all of the base
-- colors, and then some recipes using more specific colors for a few non-base
-- colors available. When crafting, the last recipes will be checked first.
tapestry.colours = {
	{"white",      "White",      "white"},
	{"grey",       "Grey",       "grey"},
	{"black",      "Black",      "black"},
	{"red",        "Red",        "red"},
	{"yellow",     "Yellow",     "yellow"},
	{"green",      "Green",      "green"},
	{"cyan",       "Cyan",       "cyan"},
	{"blue",       "Blue",       "blue"},
	{"magenta",    "Magenta",    "magenta"},
	{"orange",     "Orange",     "orange"},
	{"violet",     "Violet",     "violet"},
	{"dark_grey",  "Dark Grey",  "dark_grey"},
	{"dark_green", "Dark Green", "dark_green"},
	{"pink", "Pink", "pink"},
	{"brown", "Brown", "brown"},
}

for _, row in ipairs(tapestry.colours) do
	local name = row[1]
	local desc = row[2]
	local craft_color_group = row[3]
	-- Node Definition
	minetest.register_node("castle:tapestry_"..name, {
	         drawtype = "nodebox",
		description = desc.." Tapestry",
		tiles = {"wool_"..name..".png"},
		groups = {oddly_breakable_by_hand=3,flammable=3},
		sounds = default.node_sound_defaults(),
	         paramtype = "light",
	         paramtype2 = "facedir",
		node_box = {
		    type = "fixed",
		    fixed = {
			    {-0.312500,-0.500000,0.437500,-0.187500,-0.375000,0.500000}, 
			    {0.187500,-0.500000,0.437500,0.312500,-0.375000,0.500000}, 
			    {-0.375000,-0.375000,0.437500,-0.125000,-0.250000,0.500000}, 
			    {0.125000,-0.375000,0.437500,0.375000,-0.250000,0.500000}, 
			    {-0.437500,-0.250000,0.437500,-0.062500,-0.125000,0.500000}, 
			    {0.062500,-0.250000,0.437500,0.461938,-0.125000,0.500000}, 
			    {-0.500000,-0.125000,0.437500,0.000000,0.000000,0.500000}, 
			    {0.000000,-0.125000,0.437500,0.500000,0.000000,0.500000}, 
			    {-0.500000,0.000000,0.437500,0.500000,1.500000,0.500000},
		    },
	    },
	    selection_box = {
		    type = "fixed",
		    fixed = {
			    {-0.500000,0.500000,0.437500,0.500000,1.500000,0.500000},
		    },		
	    },
	})
	if craft_color_group then
		-- Crafting from wool and a stick
		minetest.register_craft({
			type = "shapeless",
			output = 'castle:tapestry_'..name,
			recipe = {'wool:'..craft_color_group, 'default:stick'},
		})
	end
end