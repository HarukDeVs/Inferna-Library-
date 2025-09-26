-- init.lua (Inferna Loader)
local Inferna = {}
local function http_get(url)
    -- try normal HttpGet
    local ok, res = pcall(function() return game:HttpGet(url) end)
    if ok and res and #res > 0 then return res end

    -- syn.request
    if typeof(syn) == "table" and syn.request then
        local r = syn.request({Url = url, Method = "GET"})
        if r and r.Body then return r.Body end
    end

    -- old http_request
    if http_request then
        local r = http_request({Url = url, Method = "GET"})
        if r and r.Body then return r.Body end
    end

    -- request
    if request then
        local r = request({Url = url, Method = "GET"})
        if r and r.Body then return r.Body end
    end

    error("http_get failed: "..url)
end

local BASE = "https://raw.githubusercontent.com/HarukDeVs/Inferna-Library-/main/"

local function load_module(path)
    local body = http_get(BASE .. path)
    local fn, err = loadstring(body)
    if not fn then error("loadstring error in "..path..": "..tostring(err)) end
    return fn()
end

-- load UI
Inferna.UI = {
    Window    = load_module("UI/Window.lua"),
    TextLabel = load_module("UI/TextLabel.lua"),
}

-- load Elements
Inferna.Elements = {
    Button  = load_module("Elements/Button.lua"),
    Toggle  = load_module("Elements/Toggle.lua"),
    Textbox = load_module("Elements/Textbox.lua"),
}

return Inferna
