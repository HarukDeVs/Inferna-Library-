-- This for now i tired To write lol
local Inferna = {}

-- Load Modules
local UI = {}
UI.Window = require(script.UI.Window)
UI.TextLabel = require(script.UI.TextLabel)

local Elements = {}
Elements.Button = require(script.Elements.Button)
Elements.Toggle = require(script.Elements.Toggle)
Elements.Textbox = require(script.Elements.Textbox)

-- Expose API
Inferna.UI = UI
Inferna.Elements = Elements

return Inferna
