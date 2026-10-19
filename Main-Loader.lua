
local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local pid = game.PlaceId

if pid == 142823291 then
    loadstring(game:HttpGet("https://vxezestudio.online/api/scripts/script_r0VeAauEuUxPg/stream/init"))()
elseif pid == 98502499119821 then
    loadstring(game:HttpGet("https://vxezestudio.online/api/scripts/script_58QYU7BTt9Dg/stream/init"))()
else
    lp:Kick("Game not supported")
end
