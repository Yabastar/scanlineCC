-- 000
function generateBrailleCharacters()
    local brailleCharacters = {}

    for i = 0, 31 do
        local binaryPattern = string.format("%05d", tonumber(string.format("%b", i)))
        local brailleChar = "\128"

        for j = 1, 6 do
            local bit = tonumber(binaryPattern:sub(j, j))
            brailleChar = brailleChar .. (bit == 1 and "1" or "0")
        end

        table.insert(brailleCharacters, string.char(tonumber(brailleChar, 2)))
    end

    return brailleCharacters
end

-- Print Braille characters from "\129" to "\160"
local brailleChars = generateBrailleCharacters()
for i, char in ipairs(brailleChars) do
    print(i + 128, char)
end

