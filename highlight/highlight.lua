local highlightmodule = {}
highlightmodule.__index = highlightmodule

function highlightmodule:new()
    return setmetatable({drawingstorage = {}},highlightmodule)
end

function highlightmodule:create(Parent,Properties)
    if typeof(Properties) == "table" then else print("Error: Properties is an table!") end
    local higlightitem = Instance.new("Highlight",Parent)
    for i, v in pairs(Properties) do
        higlightitem[i] = v
    end
    do
        table.insert(_G.highlightmod,higlightitem)
    end
    return higlightitem
end

function highlightmodule:hide()
    for i = 1, #_G.highlightmod do
        local higlightitem = _G.highlightmod[i]
        if higlightitem then
            higlightitem.Enabled = false
        end
    end
end

function highlightmodule:deleteall()
    for i = 1,#_G.highlightmod do
        _G.highlightmod[i]:Remove()
    end
    setmetatable(_G.highlightmod,nil)
end

return highlightmodule