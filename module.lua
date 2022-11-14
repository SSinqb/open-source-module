--[[
    module credits {
        StackOverflow : Split
    }
    --
    open-source module made by me (weda/SSinqb)
    made by unknown user :scream:
    --
    module features : {
        Roblox : {
            Wait
            Connection
            Drawing : {
                CreateDrawing
                DeleteDrawing
            }
            Highlight : {
                CreateHighlight
                DeleteHighlight
            }
            Split
        }
    } 
    will update if not lazy
]]

local ezmodule = {}
ezmodule.__index = ezmodule

--// Modules

function ezmodule:Wait(settings)
    if settings.mode == "task" then
        return task.wait(settings.delay)
    elseif settings.mode == "normal" then
        return wait(settings.delay)
    end
end

function ezmodule:Connection(connection)
    local connection = connection.type:Connect(connection.callback)
    return connection
end

--// Drawing Modules

function ezmodule:newDrawing()
    return setmetatable({drawingstorage = {}}, ezmodule)
end

local drawingtable = ezmodule:newDrawing()

function ezmodule:CreateDrawing(drawingtype,properties)
    local drawingitem = Drawing.new(drawingtype)
    for i, v in next, properties do
        drawingitem[i] = v
    end
    table.insert(drawingtable,drawingitem)
    return drawingitem
end

function ezmodule:DeleteDrawings()
    for i = 1, #drawingtable do
        drawingtable[i]:Remove()
    end
    setmetatable(drawingtable, nil)
end

--// Highlight

function ezmodule:newHighlight()
    return setmetatable({highlightstorage = {}},ezmodule)
end

local highlighttable = ezmodule:newHighlight()

function ezmodule:CreateHighlight(model,properties)
    local hlitem = Instance.new("Highlight",model)
    for i, v in pairs(properties) do
        hlitem[i] = v
    end

    table.insert(highlighttable,hlitem)
    return hlitem
end

function ezmodule:DeleteHighlights()
    for i = 1,#highlighttable do
        highlighttable[i]:Remove()
    end
    setmetatable(highlighttable,nil)
end

--// Split

function ezmodule:Split(text, symbol)
    result = {};
    for match in (text..delimiter):gmatch("(.-)"..symbol) do
        table.insert(result, match);
    end
    return result;
end


return ezmodule
