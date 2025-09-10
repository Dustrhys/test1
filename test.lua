-- FarmHub UI Example

local FarmHub = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")

FarmHub.Name = "FarmHub"
FarmHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
Frame.Parent = FarmHub

Title.Text = "Farm"
Title.Size = UDim2.new(1,0,0,30)
Title.BackgroundColor3 = Color3.fromRGB(50,50,50)
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.Parent = Frame

-- ปุ่ม Auto Collect
local autoCollect = Instance.new("TextButton")
autoCollect.Text = "Auto Collect: OFF"
autoCollect.Size = UDim2.new(1,-20,0,30)
autoCollect.Position = UDim2.new(0,10,0,40)
autoCollect.BackgroundColor3 = Color3.fromRGB(70,70,70)
autoCollect.TextColor3 = Color3.fromRGB(255,255,255)
autoCollect.Parent = Frame

local collectOn = false
autoCollect.MouseButton1Click:Connect(function()
    collectOn = not collectOn
    autoCollect.Text = "Auto Collect: " .. (collectOn and "ON" or "OFF")
    print("Auto Collect:", collectOn)
end)

-- ปุ่ม Hatch Aura
local hatchAura = Instance.new("TextButton")
hatchAura.Text = "Hatch Aura: OFF"
hatchAura.Size = UDim2.new(1,-20,0,30)
hatchAura.Position = UDim2.new(0,10,0,80)
hatchAura.BackgroundColor3 = Color3.fromRGB(70,70,70)
hatchAura.TextColor3 = Color3.fromRGB(255,255,255)
hatchAura.Parent = Frame

local auraOn = false
hatchAura.MouseButton1Click:Connect(function()
    auraOn = not auraOn
    hatchAura.Text = "Hatch Aura: " .. (auraOn and "ON" or "OFF")
    print("Hatch Aura:", auraOn)
end)

-- Auto Buy Egg
local autoBuy = Instance.new("TextButton")
autoBuy.Text = "Auto Buy: OFF"
autoBuy.Size = UDim2.new(1,-20,0,30)
autoBuy.Position = UDim2.new(0,10,0,120)
autoBuy.BackgroundColor3 = Color3.fromRGB(70,70,70)
autoBuy.TextColor3 = Color3.fromRGB(255,255,255)
autoBuy.Parent = Frame

local buyOn = false
autoBuy.MouseButton1Click:Connect(function()
    buyOn = not buyOn
    autoBuy.Text = "Auto Buy: " .. (buyOn and "ON" or "OFF")
    print("Auto Buy:", buyOn)
end)

add test.lua
