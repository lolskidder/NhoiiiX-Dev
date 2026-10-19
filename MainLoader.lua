local GAMES = {
    {
        Name = "Murder Mystery 2",
        GameId = 142823291,
        Loader = "https://vxezestudio.online/api/scripts/script_r0VeAauEuUxPg/stream/init"
    }
}

local function LoadGame()
    local gameId = game.PlaceId

    for _, v in ipairs(GAMES) do
        if gameId == v.GameId then
            local success, result = pcall(function()
                local source = game:HttpGet(v.Loader)
                local loader = loadstring(source)

                assert(loader, "Không thể loader")
                loader()
            end)

            if not success then
                warn("[NhoiiiX] Không thể tải " .. v.Name .. ": " .. tostring(result))
            end

            return
        end
    end

    warn("[LunarX] Game chưa được hỗ trợ: " .. tostring(gameId))
end

LoadGame()
