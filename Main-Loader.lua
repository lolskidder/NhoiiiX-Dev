local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local pid = game.PlaceId

if pid == 142823291 then -- MM2
    loadstring(game:HttpGet("https://vxezestudio.online/api/scripts/script_r0VeAauEuUxPg/stream/init"))()

elseif pid == 98502499119821 then -- HWF
    loadstring(game:HttpGet("https://vxezestudio.online/api/scripts/script_58QYU7BTt9Dg/stream/init"))()

elseif pid == 119091355492870
    or pid == 82878101790702
    or pid == 132854526011923 then -- RockFruit
    loadstring(game:HttpGet("https://api.xhider.xyz/files/v4/loaders/130f93dd6546535517210dc28869d19a.lua"))()

elseif pid == 114326934417838 then -- break and steal an egg
    loadstring(game:HttpGet("https://vxezestudio.online/api/scripts/script_7duMHGZTfKaWU/stream/init"))()

elseif pid == 113290951185459 then -- Anime Dice
    loadstring(game:HttpGet("https://vxezestudio.online/api/scripts/script_82HVMJlLn6Omw/stream/init"))()
    
-- Blox Fruits
elseif pid == 85211729168715
    or pid == 79091703265657
    or pid == 100117331123089 then

    local gui = Instance.new("ScreenGui")
    gui.Name = "NhoiiiXHubSelector"
    gui.ResetOnSpawn = false
    gui.Parent = lp:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.fromOffset(260, 160)
    frame.Position = UDim2.new(0.5, -130, 0.5, -80)
    frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
    frame.Parent = gui

    Instance.new("UICorner", frame).CornerRadius =
        UDim.new(0, 12)

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 45)
    title.BackgroundTransparency = 1
    title.Text = "NhoiiiX - Chọn Hub"
    title.TextColor3 = Color3.new(1, 1, 1)
    title.TextSize = 19
    title.Font = Enum.Font.GothamBold
    title.Parent = frame

    local function makeButton(text, y, url)
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(1, -30, 0, 40)
        button.Position = UDim2.new(0, 15, 0, y)
        button.BackgroundColor3 = Color3.fromRGB(75, 95, 220)
        button.Text = text
        button.TextColor3 = Color3.new(1, 1, 1)
        button.TextSize = 16
        button.Font = Enum.Font.GothamBold
        button.Parent = frame

        Instance.new("UICorner", button).CornerRadius =
            UDim.new(0, 8)

        button.Activated:Connect(function()
            gui:Destroy()

            local ok, err = pcall(function()
                local source = game:HttpGet(url)
                local fn = loadstring(source)
                assert(fn, "Không biên dịch được script")
                fn()
            end)

            if not ok then
                warn("Hub load error:", err)
            end
        end)
    end

    makeButton(
        "NhoiiiX PVP",
        55,
        "https://vxezestudio.online/api/scripts/script_Pa7uy5Z0mpKdN/stream/init"
    )

    makeButton(
        "NhoiiiX Farm",
        105,
        "https://vxezestudio.online/api/scripts/script_KSNOqPAlOI2lc/stream/init"
    )

else
    warn("Game not supported. PlaceId:", pid)
end
