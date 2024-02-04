print("\81")

local pixelList = {}

local pixelRef = {
  a = "\81"
}
local function drawPixel(x,y)
  table.insert(pixelList, {x,y})
end

local function clear()

end

local function drawBuffer()

end
