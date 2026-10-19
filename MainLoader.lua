local GAMES = {
    {
        Name = "Murder Mystery 2",
        GameId = 142823291,
        Loader = "https://api.xhider.xyz/files/v4/loaders/4e4d65201222b0786875145b0ebbe82a.lua"
    }
}

local function LoadGame()
    local gameId = game.PlaceId

    for _, v in ipairs(GAMES) do
        if gameId == v.GameId then
            local success, result = pcall(function()
                local source = game:HttpGet(v.Loader)
                local loader = loadstring(source)

                assert(loader, "Không thể biên dịch loader")
                loader()
            end)

            if not success then
                warn("[LunarX] Không thể tải " .. v.Name .. ": " .. tostring(result))
            end

            return
        end
    end

    warn("[LunarX] Game chưa được hỗ trợ: " .. tostring(gameId))
end

LoadGame()
