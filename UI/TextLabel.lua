-- [[

This is Text Label 

--]]
local TextLabel = {}

function TextLabel:Create(parent, text)
    local LabelBox = Instance.new("Frame")
    LabelBox.Size = UDim2.new(0.9, 0, 0, 35)
    LabelBox.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
    LabelBox.Parent = parent
    Instance.new("UICorner", LabelBox).CornerRadius = UDim.new(0, 8)

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, 0, 1, 0)
    Label.BackgroundTransparency = 1
    Label.Text = text
    Label.TextColor3 = Color3.fromRGB(255,255,255)
    Label.Font = Enum.Font.GothamBold
    Label.TextSize = 14
    Label.Parent = LabelBox

    return Label
end

return TextLabel
