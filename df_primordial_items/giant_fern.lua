-- internationalization boilerplate
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

------------------------------------------------------------------------------------
-- Nodes

minetest.register_node("df_primordial_items:giant_fern_tree", {
	description = S("Giant Fern Stem"),
	_doc_items_longdesc = df_primordial_items.doc.giant_fern_desc,
	_doc_items_usagehelp = df_primordial_items.doc.giant_fern_usage,
	tiles = {"dfcaverns_jungle_fern_stem.png","dfcaverns_jungle_fern_stem.png","dfcaverns_jungle_fern_bark.png",},
	groups = {tree=1, choppy=2, oddly_breakable_by_hand=1, flammable= 2, fern_stem = 1},
	is_ground_content = false,
	paramtype = "light",
	paramtype2 = "facedir",
	sounds = default.node_sound_wood_defaults(),
	sunlight_propagates = true,
	on_place = minetest.rotate_node,
})

minetest.register_node("df_primordial_items:giant_fern_tree_slant_bottom", {
	description = S("Giant Fern Stem"),
	_doc_items_longdesc = df_primordial_items.doc.giant_fern_desc,
	_doc_items_usagehelp = df_primordial_items.doc.giant_fern_usage,
	tiles = {
		"dfcaverns_jungle_fern_stem.png",
		"dfcaverns_jungle_fern_bark.png",
		"dfcaverns_jungle_fern_stem.png",
		"dfcaverns_jungle_fern_bark.png",
		"dfcaverns_jungle_fern_bark.png",
		"dfcaverns_jungle_fern_bark.png",
	},
	paramtype2 = "facedir",
	drawtype = "mesh",
	mesh = "dfcaverns_fern_slant.obj",
	paramtype = "light",
	drop = "df_primordial_items:giant_fern_tree",
	groups = {choppy = 2, tree = 1, oddly_breakable_by_hand=1, flammable = 2, fern_stem = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.625, 0.5, 0.0, 0.375},
			{-0.5, 0.0, -0.875, 0.5, 0.5, 0.125},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.625, 0.5, 0.0, 0.375},
			{-0.5, 0.0, -0.875, 0.5, 0.5, 0.125},
		},
	},
})

minetest.register_node("df_primordial_items:giant_fern_tree_slant_top", {
	description = S("Giant Fern Stem"),
	_doc_items_longdesc = df_primordial_items.doc.giant_fern_desc,
	_doc_items_usagehelp = df_primordial_items.doc.giant_fern_usage,
	tiles = {
		"dfcaverns_jungle_fern_stem.png",
		"dfcaverns_jungle_fern_bark.png",
		"dfcaverns_jungle_fern_stem.png",
		"dfcaverns_jungle_fern_bark.png",
		"dfcaverns_jungle_fern_bark.png",
		"dfcaverns_jungle_fern_bark.png",
	},
	paramtype2 = "facedir",
	drawtype = "mesh",
	mesh = "dfcaverns_fern_slant_2.obj",
	paramtype = "light",
	drop = "df_primordial_items:giant_fern_tree",
	groups = {choppy = 2, tree = 1, oddly_breakable_by_hand=1, flammable = 2, fern_stem = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.125, 0.5, 0.0, 0.875},
			{-0.5, 0.0, -0.375, 0.5, 0.5, 0.625},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.125, 0.5, 0.0, 0.875},
			{-0.5, 0.0, -0.375, 0.5, 0.5, 0.625},
		},
	},
})

minetest.register_node("df_primordial_items:giant_fern_tree_slant_full", {
	description = S("Giant Fern Stem"),
	_doc_items_longdesc = df_primordial_items.doc.giant_fern_desc,
	_doc_items_usagehelp = df_primordial_items.doc.giant_fern_usage,
	tiles = {
		"dfcaverns_jungle_fern_stem.png",
		"dfcaverns_jungle_fern_bark.png",
		"dfcaverns_jungle_fern_bark.png",
		"dfcaverns_jungle_fern_bark.png",
		"dfcaverns_jungle_fern_bark.png",
		"dfcaverns_jungle_fern_bark.png",
	},
	paramtype2 = "facedir",
	drawtype = "mesh",
	mesh = "dfcaverns_fern_slant_full.obj",
	paramtype = "light",
	drop = "df_primordial_items:giant_fern_tree",
	groups = {choppy = 2, tree = 1, oddly_breakable_by_hand=1, flammable = 2, fern_stem = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.75, 0.5, 0, 0.25},
			{-0.5, 0, -1.25, 0.5, 0.5, -0.25},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.75, 0.5, 0, 0.25},
			{-0.5, 0, -1.25, 0.5, 0.5, -0.25},
		},
	},
})

minetest.register_node("df_primordial_items:giant_fern_leaves", {
	description = S("Giant Fern Leaves"),
	_doc_items_longdesc = df_primordial_items.doc.giant_fern_desc,
	_doc_items_usagehelp = df_primordial_items.doc.giant_fern_usage,
	tiles = {"dfcaverns_jungle_fern_leaves_01.png"},
	visual_scale = 1.41,
	inventory_image = "dfcaverns_jungle_fern_leaves_01.png",
	wield_image = "dfcaverns_jungle_fern_leaves_01.png",
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	is_ground_content = false,
	paramtype = "light",
	drawtype = "plantlike",
	buildable_to = true,
	walkable = false,
	waving = 2,
	sounds = default.node_sound_leaves_defaults(),
	use_texture_alpha = true,
	sunlight_propagates = true,
	after_place_node = default.after_place_leaves,
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/10 chance
				items = {"df_primordial_items:fern_sapling"},
				rarity = 10,
			},
			{
				items = {"df_primordial_items:giant_fern_leaves"},
			}
		}
	},
})

default.register_leafdecay({
	trunks = {"df_primordial_items:giant_fern_tree_slant_full", "df_primordial_items:giant_fern_tree_slant_top", "df_primordial_items:giant_fern_tree_slant_bottom", "df_primordial_items:giant_fern_tree"},
	leaves = {"df_primordial_items:giant_fern_leaves"},
	radius = 2,
})

------------------------------------------------------------------------------------
-- Schematics

local n1 = { name = "air", prob = 0 }
local n2 = { name = "df_primordial_items:giant_fern_leaves" }
local n3 = { name = "df_primordial_items:giant_fern_tree_slant_top" }
local n4 = { name = "df_primordial_items:giant_fern_tree_slant_full" }
local n5 = { name = "df_primordial_items:giant_fern_tree" }
local n6 = { name = "df_primordial_items:giant_fern_tree_slant_bottom" }


local fern_4_nodes_tall = {
	size = {y = 4, x = 3, z = 4},
	center_pos = {y = 0, x = 1, z = 3},
	data = {
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, n1, n1, n1, n1, n1, n1, 
		n1, n2, n1, n2, n1, n1, n1, n1, n1, n1, n2, n3, n2, n1, n4, n1, n1, 
		n1, n1, n1, n6, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
	}
}

local fern_5_nodes_tall = {
	size = {y = 5, x = 3, z = 4},
	center_pos = {y = 0, x = 1, z = 3},
	data = {
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, n1, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n2, n1, n2, n1, n1, n1, n1, n1, n1, n1, 
		n1, n1, n2, n3, n2, n1, n4, n1, n1, n1, n1, n1, n5, n1, n2, n6, n2, 
		n1, n1, n1, n1, n1, n1, n1, n1, n1, 
	}
}

local fern_6_nodes_tall = {
	size = {y = 6, x = 5, z = 4},
	center_pos = {y = 0, x = 2, z = 3},
	data = {
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, n1, n1, n1, n1, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
		n2, n1, n2, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n2, n2, n3, n2, n2, n1, n1, n4, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n5, n1, n1, n1, n2, n5, n2, n1, n2, n2, 
		n6, n2, n2, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
		n1, 
	}
}

local fern_9_nodes_tall = {
	size = {y = 9, x = 5, z = 5},
	center_pos = {y = 0, x = 2, z = 4},
	data = {
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n1, n2, n1, n1, n1, n1, n1, n1, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, n1, n2, n1, 
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
		n1, n2, n2, n3, n2, n2, n1, n1, n4, n1, n1, n1, n1, n1, n1, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
		n1, n1, n2, n2, n3, n2, n2, n2, n2, n6, n2, n2, n1, n1, n1, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n5, n1, n1, n1, n1, 
		n5, n1, n1, n1, n2, n5, n2, n1, n1, n2, n6, n2, n1, n1, n1, n1, n1, 
		n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
		n1, n1, n1, n1, 
	}
}

local ferns = {fern_4_nodes_tall, fern_5_nodes_tall, fern_6_nodes_tall, fern_9_nodes_tall}
local rotations = {0, 90, 180, 270}

df_primordial_items.get_fern_schematic = function()
	return ferns[math.random(1,4)]
end

minetest.register_node("df_primordial_items:fern_sapling", {
	description = S("Giant Fern Sapling"),
	_doc_items_longdesc = df_primordial_items.doc.giant_fern_desc,
	_doc_items_usagehelp = df_primordial_items.doc.giant_fern_usage,
	tiles = {"dfcaverns_jungle_fern_03.png"},
	inventory_image = "dfcaverns_jungle_fern_03.png",
	wield_image = "dfcaverns_jungle_fern_03.png",
	groups = {snappy = 3, flora = 1, attached_node = 1, flammable = 1},
	paramtype = "light",
	drawtype = "plantlike",
	buildable_to = true,
	walkable = false,
	sounds = default.node_sound_leaves_defaults(),
	use_texture_alpha = true,
	sunlight_propagates = true,
	on_construct = function(pos)
		--TODO timer
		local fern = df_primordial_items.get_fern_schematic()
		local rotation = rotations[math.random(1,#rotations)]
		minetest.set_node(pos, {name="air"}) -- clear sapling so fern can replace it
		mapgen_helper.place_schematic(pos, fern, rotation)
	end,
})
