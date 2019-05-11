minetest.register_chatcommand("setinfo", {
	params = "<info>",
	description = "Sets your info",
	func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_attribute("info", param)
		return true, "Set your info"
	end,
})

minetest.register_chatcommand("seeinfo", {
	params = "<info>",
	description = "Sets your info",
	func = function(name, param)
	local player = minetest.get_player_by_name(name)
	if not player then
		return false, "Player not found"
	end
        local player2getinfo = minetest.get_player_by_name(param)
        minetest.chat_send_player(player:get_player_name(), player2getinfo:get_attribute("info"))
	end,
})