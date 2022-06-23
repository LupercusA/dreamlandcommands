
spawn_command = {}
spawn_command.pos = {x=573.1, y=4.5, z=1746.0}
local cursed_world_exists = minetest.get_modpath("cursed_world")

if minetest.setting_get_pos("static_spawnpoint") then
    spawn_command.pos = minetest.setting_get_pos("static_spawnpoint")
end

function teleport_to_spawn(name)
    local player = minetest.get_player_by_name(name)
    if player == nil then
        -- just a check to prevent the server crashing
        return false
    end
    local pos = player:get_pos()
    if math.abs(spawn_command.pos.x-pos.x)<20 and math.abs(spawn_command.pos.z-pos.z)<20 then
        minetest.chat_send_player(name, "Already close to spawn!")
    elseif cursed_world_exists and _G['cursed_world'] ~= nil and    --check global table for cursed_world mod
        cursed_world.location_y and cursed_world.dimension_y and
        pos.y < (cursed_world.location_y + cursed_world.dimension_y) and    --if player is in cursed world, stay in cursed world
        pos.y > (cursed_world.location_y - cursed_world.dimension_y)
    then   --check global table for cursed_world mod
        --minetest.chat_send_player(name, "T"..(cursed_world.location_y + cursed_world.dimension_y).." "..(cursed_world.location_y - cursed_world.dimension_y))
        local spawn_pos = vector.round(spawn_command.pos);
        spawn_pos.y = spawn_pos.y + cursed_world.location_y;
        player:set_pos(spawn_pos)
        minetest.chat_send_player(name, "Teleported to spawn!")
    else
        player:set_pos(spawn_command.pos)
        minetest.chat_send_player(name, "Teleported to spawn!")
    end
end

minetest.register_chatcommand("spawn", {
    description = "Teleport you to spawn point.",
    func = teleport_to_spawn,
})


boss_command = {}
boss_command.pos = {x=1055.3, y=1.5, z=1631.6}
local cursed_world_exists = minetest.get_modpath("cursed_world")

if minetest.setting_get_pos("static_spawnpoint") then
    boss_command.pos = minetest.setting_get_pos("static_spawnpoint")
end

function teleport_to_boss(name)
    local player = minetest.get_player_by_name(name)
    if player == nil then
        -- just a check to prevent the server crashing
        return false
    end
    local pos = player:get_pos()
    if math.abs(boss_command.pos.x-pos.x)<20 and math.abs(boss_command.pos.z-pos.z)<20 then
        minetest.chat_send_player(name, "Already close to boss spawn!")
    elseif cursed_world_exists and _G['cursed_world'] ~= nil and    --check global table for cursed_world mod
        cursed_world.location_y and cursed_world.dimension_y and
        pos.y < (cursed_world.location_y + cursed_world.dimension_y) and    --if player is in cursed world, stay in cursed world
        pos.y > (cursed_world.location_y - cursed_world.dimension_y)
    then   --check global table for cursed_world mod
        --minetest.chat_send_player(name, "T"..(cursed_world.location_y + cursed_world.dimension_y).." "..(cursed_world.location_y - cursed_world.dimension_y))
        local boss_pos = vector.round(boss_command.pos);
        boss_pos.y = boss_pos.y + cursed_world.location_y;
        player:set_pos(boss_pos)
        minetest.chat_send_player(name, "Teleported to boss!")
    else
        player:set_pos(boss_command.pos)
        minetest.chat_send_player(name, "Teleported to boss!")
    end
end

minetest.register_chatcommand("boss", {
    description = "Teleport you to boss point.",
    func = teleport_to_boss,
})

pvp_command = {}
pvp_command.pos = {x=860.5, y=1.5, z=2446.7}
local cursed_world_exists = minetest.get_modpath("cursed_world")

if minetest.setting_get_pos("static_spawnpoint") then
    spawn_command.pos = minetest.setting_get_pos("static_spawnpoint")
end

function teleport_to_pvp(name)
    local player = minetest.get_player_by_name(name)
    if player == nil then
        -- just a check to prevent the server crashing
        return false
    end
    local pos = player:get_pos()
    if math.abs(pvp_command.pos.x-pos.x)<20 and math.abs(pvp_command.pos.z-pos.z)<20 then
        minetest.chat_send_player(name, "Already close to pvp arena!")
    elseif cursed_world_exists and _G['cursed_world'] ~= nil and    --check global table for cursed_world mod
        cursed_world.location_y and cursed_world.dimension_y and
        pos.y < (cursed_world.location_y + cursed_world.dimension_y) and    --if player is in cursed world, stay in cursed world
        pos.y > (cursed_world.location_y - cursed_world.dimension_y)
    then   --check global table for cursed_world mod
        --minetest.chat_send_player(name, "T"..(cursed_world.location_y + cursed_world.dimension_y).." "..(cursed_world.location_y - cursed_world.dimension_y))
        local pvp_pos = vector.round(pvp_command.pos);
        pvp_pos.y = pvp_pos.y + cursed_world.location_y;
        player:set_pos(pvp_pos)
        minetest.chat_send_player(name, "Teleported to pvp arena!")
    else
        player:set_pos(pvp_command.pos)
        minetest.chat_send_player(name, "Teleported to arena!")
    end
end

minetest.register_chatcommand("pvp", {
    description = "Teleport you to pvp point.",
    func = teleport_to_pvp,
})

shop_command = {}
shop_command.pos = {x=4149.6, y=209.5, z=1263.3}
local cursed_world_exists = minetest.get_modpath("cursed_world")

if minetest.setting_get_pos("static_spawnpoint") then
    spawn_command.pos = minetest.setting_get_pos("static_spawnpoint")
end

function teleport_to_shop(name)
    local player = minetest.get_player_by_name(name)
    if player == nil then
        -- just a check to prevent the server crashing
        return false
    end
    local pos = player:get_pos()
    if math.abs(shop_command.pos.x-pos.x)<20 and math.abs(shop_command.pos.z-pos.z)<20 then
        minetest.chat_send_player(name, "Already close to sh0p!")
    elseif cursed_world_exists and _G['cursed_world'] ~= nil and    --check global table for cursed_world mod
        cursed_world.location_y and cursed_world.dimension_y and
        pos.y < (cursed_world.location_y + cursed_world.dimension_y) and    --if player is in cursed world, stay in cursed world
        pos.y > (cursed_world.location_y - cursed_world.dimension_y)
    then   --check global table for cursed_world mod
        --minetest.chat_send_player(name, "T"..(cursed_world.location_y + cursed_world.dimension_y).." "..(cursed_world.location_y - cursed_world.dimension_y))
        local shop_pos = vector.round(shop_command.pos);
        shop_pos.y = shop_pos.y + cursed_world.location_y;
        player:set_pos(shop_pos)
        minetest.chat_send_player(name, "Teleported to sh0p!")
    else
        player:set_pos(shop_command.pos)
        minetest.chat_send_player(name, "Teleported to sh0p!")
    end
end

minetest.register_chatcommand("shop", {
    description = "Teleport you to shop point.",
    func = teleport_to_shop,
})