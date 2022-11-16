--[[
    weda's Drawing Module
    Created on 11/16/22
]]

--[[
    Drawing Module Functions : {
        :new() -- makes a metatable for [drawingmod], put this on below the drawing mod loadstring. make a _G. variable for it named as "drawmod"
        :create(<string> type,{<properties>}) -- creates drawing yes yes
        :hide() -- hides all current drawings used
        :deleteall() -- deletes all current drawings used
    }
]]

--[[https://docs.synapse.to/docs/reference/drawing_lib.html]]-- [[Drawing Library Example]]

local drawingmod = loadstring(game:HttpGet("https://raw.githubusercontent.com/SSinqb/open-source-module/main/drawing.lua"))()
_G.drawmod = drawingmod:new() -- this is needed

local circle = drawingmod:create("Circle",{ Visible = true,NumSides = 64,Radius = 300,Filled = false,Position = Vector2.new(600,200) })
-- drawingmod:hide()
-- drawingmod:deleteall()
