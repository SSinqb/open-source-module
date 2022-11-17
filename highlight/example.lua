local drawingmod = loadstring(game:HttpGet("https://raw.githubusercontent.com/SSinqb/open-source-module/main/highlight/highlight.lua"))()
_G.drawmod = drawingmod:new() -- this is needed

local circle = drawingmod:create(game.Players.LocalPlayer,{ Enabled = true})
-- drawingmod:hide()
-- drawingmod:deleteall()
