-- [[

This is The Window of Inferna 

--]]
local Window = {}
local TweenService = game:GetService("TweenService")

function Window:Create(title)
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    ScreenGui.Name = "InfernaUILib"

    local Main = Instance.new("Frame")
    Main.Size = UDim2.new(0, 300, 0, 200)
    Main.Position = UDim2.new(0.5, -150, 0.5, -100)
    Main.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
    Main.Active = true
    Main.Draggable = true
    Main.Parent = ScreenGui
    Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 12)

    local TopBar = Instance.new("Frame", Main)
    TopBar.Size = UDim2.new(1, 0, 0, 30)
    TopBar.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    Instance.new("UICorner", TopBar).CornerRadius = UDim.new(0, 12)

    local Title = Instance.new("TextLabel", TopBar)
    Title.Size = UDim2.new(1, -40, 1, 0)
    Title.Position = UDim2.new(0, 10, 0, 0)
    Title.BackgroundTransparency = 1
    Title.Text = title
    Title.TextColor3 = Color3.fromRGB(0, 170, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 14
    Title.TextXAlignment = Enum.TextXAlignment.Left

    local Content = Instance.new("Frame", Main)
    Content.Size = UDim2.new(1, 0, 1, -30)
    Content.Position = UDim2.new(0, 0, 0, 30)
    Content.BackgroundTransparency = 1

    local Layout = Instance.new("UIListLayout", Content)
    Layout.Padding = UDim.new(0, 8)
    Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    Layout.SortOrder = Enum.SortOrder.LayoutOrder

    return Content -- return where elements go
end

return Window
