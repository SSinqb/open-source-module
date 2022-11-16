local drawingmod = {}
drawingmod.__index = drawingmod

function drawingmod:new()
    return setmetatable({drawingstorage = {}},drawingmod)
end

function drawingmod:create(Type,Properties)
    if typeof(Properties) == "table" then else print("Error: Properties is an table!") end
    local drawingitem = Drawing.new(Type)
    for i, v in pairs(Properties) do
        drawingitem[i] = v
    end
    do
        table.insert(self.drawingstorage,drawingitem)
    end
    return drawingitem
end

function drawingitem:deleteall()
    for i = 1,#self.drawingstorage do
        self.drawingstorage[i]:Remove()
    end
    setmetatable(self.drawingstorage,nil)
end

return drawingmod