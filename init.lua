-- init.lua (Inferna Loader)

local baseUrl = "https://raw.githubusercontent.com/HarukDeVs/Inferna-Library-/main/"

local function load_module(path)
    local src = game:HttpGet(baseUrl .. path)
    local fn, err = loadstring(src)
    if not fn then
        error("Error loading " .. path .. ": " .. tostring(err))
    end
    return fn()
end

local Inferna = {}

Inferna.Elements = {
    Button = load_module("Elements/Button.lua"),
    Toggle = load_module("Elements/Toggle.lua"),
    Textbox = load_module("Elements/Textbox.lua"),
}

Inferna.UI = {
    Window = load_module("UI/Window.lua"),
    TextLabel = load_module("UI/TextLabel.lua"),
}

return Inferna
