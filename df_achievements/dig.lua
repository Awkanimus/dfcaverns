local S = minetest.get_translator(minetest.get_current_modname())

awards.register_achievement("dfcaverns_destroyed_gas_seep", {
	title = S("Destroy a Gas Seep"),
	description = S(""),
	--icon =,
	trigger = {
		type = "dig",
		node = "mine_gas:gas_seep",
		target = 1
	},
})

awards.register_achievement("dfcaverns_giant_web", {
	title = S("Collect Giant Webbing"),
	description = S(""),
	--icon =,
	trigger = {
		type = "dig",
		node = "big_webs:webbing",
		target = 1
	},
})

awards.register_achievement("dfcaverns_glow_worms", {
	title = S("Collect Glow Worms"),
	description = S(""),
	--icon =,
	trigger = {
		type = "dig",
		node = "df_mapitems:glow_worm",
		target = 1
	},
})

---------------------------------------------------------------

awards.register_achievement("dfcaverns_cave_pearls", {
	title = S("Collect Cave Pearls"),
	description = S(""),
	--icon =,
	trigger = {
		type = "dig",
		node = "df_mapitems:cave_pearls",
		target = 1
	},
})

awards.register_achievement("dfcaverns_castle_coral", {
	title = S("Collect Castle Coral"),
	description = S(""),
	--icon =,
	trigger = {
		type = "dig",
		node = "df_mapitems:castle_coral",
		target = 1
	},
})

awards.register_achievement("dfcaverns_ruby_crystals", {
	title = S("Collect Giant Red Crystal"),
	description = S(""),
	--icon =,
	trigger = {
		type = "dig",
		node = "group:dfcaverns_big_crystal",
		target = 1
	},
})

awards.register_achievement("dfcaverns_cave_coral", {
	title = S("Collect Cave Coral"),
	description = S(""),
	--icon =,
	trigger = {
		type = "dig",
		node = "group:dfcaverns_cave_coral",
		target = 1
	},
})

awards.register_achievement("dfcaverns_flawless_mese", {
	title = S("Collect Flawless Mese Crystal Block"),
	description = S(""),
	--icon =,
	trigger = {
		type = "dig",
		node = "df_mapitems:glow_mese",
		target = 1
	},
})

awards.register_achievement("dfcaverns_luminous_salt", {
	title = S("Collect Luminous Salt Crystal"),
	description = S(""),
	--icon =,
	trigger = {
		type = "dig",
		node = "df_mapitems:salt_crystal",
		target = 1
	},
})

awards.register_achievement("dfcaverns_glow_amethyst", {
	title = S("Collect Glowing Amethyst"),
	description = S(""),
	--icon =,
	trigger = {
		type = "dig",
		node = "df_underworld_items:glow_amethyst",
		target = 1
	},
})

awards.register_achievement("dfcaverns_glow_stone", {
	title = S('"Collect" Glow Stone'),
	description = S(""),
	--icon =,
	trigger = {
		type = "dig",
		node = "df_underworld_items:glowstone",
		target = 1
	},
})

awards.register_achievement("dfcaverns_prospector", {
	title = S("Deep Prospector"),
	description = S(""),
	--icon =,
})


------------------------------------------------------------------

--"dfcaverns_prospector"
local prospector_achievements = {"dfcaverns_castle_coral", "dfcaverns_cave_coral", "dfcaverns_cave_pearls", "dfcaverns_flawless_mese", "dfcaverns_glow_amethyst", "dfcaverns_glow_stone", "dfcaverns_luminous_salt", "dfcaverns_ruby_crystals"}

local test_list = df_achievements.test_list

--    name is the player name
--    def is the award def.
awards.register_on_unlock(function(player_name, def)
	local player_awards = awards.player(player_name)
	if not player_awards or not player_awards.unlocked then
		return
	end
	local unlocked = player_awards.unlocked
	test_list(player_name, "dfcaverns_prospector", unlocked, prospector_achievements)
end)