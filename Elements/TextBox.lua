--[[

This is Inferna TextBox

--]]
local Textbox = {}

function Textbox:Create(parent, placeholder, callback)
    local Box = Instance.new("TextBox")
    Box.Size = UDim2.new(0.9, 0, 0, 35)
    Box.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
    Box.PlaceholderText = placeholder
    Box.Text = ""
    Box.TextColor3 = Color3.fromRGB(255,255,255)
    Box.Font = Enum.Font.Gotham
    Box.TextSize = 14
    Box.Parent = parent
    Instance.new("UICorner", Box).CornerRadius = UDim.new(0, 8)

    Box.FocusLost:Connect(function(enter)
        if enter and callback then callback(Box.Text) end
    end)

    return Box
end

return Textbox
