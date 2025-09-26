--[[

This is Inferna Toggle 

--]]
local Toggle = {}
local TweenService = game:GetService("TweenService")

function Toggle:Create(parent, text, default, callback)
    local Frame = Instance.new("Frame", parent)
    Frame.Size = UDim2.new(0.9, 0, 0, 35)
    Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
    Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 8)

    local Label = Instance.new("TextLabel", Frame)
    Label.Size = UDim2.new(0.7, 0, 1, 0)
    Label.BackgroundTransparency = 1
    Label.Text = text
    Label.TextColor3 = Color3.fromRGB(255,255,255)
    Label.Font = Enum.Font.GothamBold
    Label.TextSize = 14
    Label.TextXAlignment = Enum.TextXAlignment.Left

    local Btn = Instance.new("TextButton", Frame)
    Btn.Size = UDim2.new(0.25, 0, 0.7, 0)
    Btn.Position = UDim2.new(0.72, 0, 0.15, 0)
    Btn.BackgroundColor3 = default and Color3.fromRGB(0,170,255) or Color3.fromRGB(50,50,50)
    Btn.Text = ""
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(1, 0)

    local state = default
    Btn.MouseButton1Click:Connect(function()
        state = not state
        TweenService:Create(
            Btn,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad),
            {BackgroundColor3 = state and Color3.fromRGB(0,170,255) or Color3.fromRGB(50,50,50)}
        ):Play()
        if callback then callback(state) end
    end)

    return state
end

return Toggle
