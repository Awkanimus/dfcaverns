local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

minetest.register_node("mine_gas:gas_wisp", {
	description = S("Gas Wisp"),
	_doc_items_longdesc = nil,
	_doc_items_usagehelp = nil,
	walkable = false,
	diggable = false,
	buildable_to = true,
	drawtype = "plantlike",
	waving = 1,
	drowning = 1,
	damage_per_second = 4,
	post_effect_color = {a = 20, r = 20, g = 20, b = 250},
	tiles = {{name = "mine_gas_wisp.png", animation =
		{
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5,
		},
	}},
	light_source = 10,
	use_texture_alpha = true,
	groups = {not_in_creative_inventory=0},
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 0,
	-- * bit 4 (0x10, decimal 16) - Makes the plant mesh 1.4x larger
	inventory_image = "mine_gas_wisp_inventory.png",
	drop = {},
	sunlight_propagates = true,
	--on_blast = function() end, -- unaffected by explosions
})

minetest.register_abm({
    label = "mine_gas:gas wisp movement",
    nodenames = {"mine_gas:gas_wisp"},
    neighbors = {"mine_gas:gas"},
    interval = 1.0,
    chance = 10,
    catch_up = true,
    action = function(pos, node)
		local next_pos = {x=pos.x+math.random(1,3)-2, y=pos.y+math.random(1,3)-2, z=pos.z+math.random(1,3)-2}
		local next_node = minetest.get_node(next_pos)
		if next_node.name == "mine_gas:gas" then
			minetest.swap_node(next_pos, node)
			minetest.swap_node(pos, next_node)
		end
		pos = next_pos

	end,
})

minetest.register_abm({
    label = "mine_gas:gas wisp extinguish",
    nodenames = {"mine_gas:gas_wisp"},
    neighbors = {"air"},
    interval = 10,
    chance = 1,
    catch_up = true,
    action = function(pos, node)
		for y = -1, 1 do
			for x = -1, 1 do
				for z = -1, 1 do
					if minetest.get_node({x=pos.x+x, y=pos.y+y, z=pos.z+z}).name == "mine_gas:gas" then
						-- there's gas adjacent, don't extinguish
						return
					end
				end
			end
		end
		-- no gas adjacent, extinguish
		minetest.set_node(pos, {name="air"})
	end,
})