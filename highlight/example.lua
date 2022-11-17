--[[
    weda's Drawing Module
    Created on 11/16/22
]]

--[[
    Drawing Module Functions : {
        :new() -- makes a metatable for [highlightmod], put this on below the highlightmod loadstring. make a _G. variable for it named as "highlightmod"
        :create(<string> Parent,{<properties>}) -- creates highlight yes yes
        :hide() -- hides all current highlights used
        :deleteall() -- deletes all current highlights used
    }
]]

local highlightmod = loadstring(game:HttpGet("https://raw.githubusercontent.com/SSinqb/open-source-module/main/highlight/highlight.lua"))()
_G.highlightmod = highlightmod:new() -- this is needed

local highlight = highlightmod:create(game.Players.LocalPlayer,{ Enabled = true})

-- highlightmod:hide()
-- highlightmod:deleteall()