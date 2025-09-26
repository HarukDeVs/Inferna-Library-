-- [[

This is The Window of Inferna 

--]]
-- UI/Window.lua
local Window = {}

function Window:Create(title)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ResetOnSpawn = false

    local Main = Instance.new("Frame")
    Main.Size = UDim2.new(0, 250, 0, 300)
    Main.Position = UDim2.new(0.3, 0, 0.2, 0)
    Main.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
    Main.Active = true
    Main.Draggable = true
    Main.Parent = ScreenGui

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 30)
    Title.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
    Title.Text = title or "Inferna Window"
    Title.TextColor3 = Color3.fromRGB(0, 170, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 14
    Title.Parent = Main

    Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 10)

    return Main
end

return Window
