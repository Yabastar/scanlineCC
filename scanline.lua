local pixelList = {}

local function drawPixel(x,y)
  table.insert(pixelList, {x,y})
end

local function clear()

end

local function drawBuffer()

end

-- Function to convert coordinates to Braille characters
function convertToBraille(coordinates)
    local emptyCharacter = "\127"
    local filledCharacter = "\160"

    local maxX, maxY = 0, 0

    -- Find maximum x and y coordinates
    for _, coord in ipairs(coordinates) do
        local x, y = coord[1], coord[2]
        maxX = math.max(maxX, x)
        maxY = math.max(maxY, y)
    end

    -- Initialize the image with empty characters
    local image = {}
    for i = 1, maxY do
        image[i] = {}
        for j = 1, maxX do
            table.insert(image[i], emptyCharacter)
        end
    end

    -- Mark specified coordinates with filled Braille characters
    for _, coord in ipairs(coordinates) do
        local x, y = coord[1], coord[2]
        image[y][x] = filledCharacter
    end

    -- Print the resulting image
    for _, row in ipairs(image) do
        print(table.concat(row))
    end
end

-- Example usage
local coordinates = {{1, 1}, {2, 2}, {3, 3}, {4, 4}, {5, 5}}
print(convertToBraille(coordinates))
