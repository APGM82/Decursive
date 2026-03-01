-- DecursiveButton.lua
DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00Decursive Button loaded:|r Click to decurse, drag to move, Shift+Scroll to resize, Shift+RightClick to change icon.")

-- Default button settings
local DCR_BUTTON_DEFAULT_SIZE = 44
local DCR_BUTTON_MIN_SIZE = 20
local DCR_BUTTON_MAX_SIZE = 100
local DCR_BUTTON_SIZE_STEP = 4

-- Available icons for the button
local DCR_BUTTON_ICONS = {
    "Interface\\Icons\\Ability_Creature_Disease_02",
    "Interface\\Icons\\Spell_Holy_RemoveCurse",
    "Interface\\Icons\\Spell_Nature_RemoveCurse",
    "Interface\\Icons\\Spell_Nature_NullifyPoison",
    "Interface\\Icons\\Spell_Holy_DispelMagic",
    "Interface\\Icons\\Spell_Nature_Purge",
    "Interface\\Icons\\Spell_Holy_Restoration",
    "Interface\\Icons\\Spell_Nature_Abolishmagic",
    "Interface\\Icons\\Spell_Holy_SealOfWrath",
    "Interface\\Icons\\Spell_Nature_SlowPoison",
    "Interface\\Icons\\Spell_Holy_Cleanse",
    "Interface\\Icons\\Spell_Nature_NullifyDisease",
}
local DCR_BUTTON_DEFAULT_ICON = 1

DecursiveCustomButton = CreateFrame("Button", "DecursiveCustomButton", UIParent)
DecursiveCustomButton:SetWidth(DCR_BUTTON_DEFAULT_SIZE)
DecursiveCustomButton:SetHeight(DCR_BUTTON_DEFAULT_SIZE)
DecursiveCustomButton:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
DecursiveCustomButton:SetMovable(true)
DecursiveCustomButton:EnableMouse(true)
DecursiveCustomButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
DecursiveCustomButton:RegisterForDrag("LeftButton")
DecursiveCustomButton:SetScript("OnDragStart", function() this:StartMoving() end)
DecursiveCustomButton:SetScript("OnDragStop", function() this:StopMovingOrSizing() end)
DecursiveCustomButton:SetNormalTexture(DCR_BUTTON_ICONS[DCR_BUTTON_DEFAULT_ICON])

-- Handle click events
DecursiveCustomButton:SetScript("OnClick", function()
    if arg1 == "RightButton" and IsShiftKeyDown() then
        -- Cycle to next icon
        local currentIndex = 1
        if Dcr_Saved and Dcr_Saved.ButtonIcon then
            currentIndex = Dcr_Saved.ButtonIcon
        end
        currentIndex = currentIndex + 1
        if currentIndex > table.getn(DCR_BUTTON_ICONS) then
            currentIndex = 1
        end
        DecursiveCustomButton:SetNormalTexture(DCR_BUTTON_ICONS[currentIndex])
        if Dcr_Saved then
            Dcr_Saved.ButtonIcon = currentIndex
        end
    else
        SlashCmdList["DECURSIVE"]("")
    end
end)

-- Enable mouse wheel for resizing
DecursiveCustomButton:EnableMouseWheel(true)
DecursiveCustomButton:SetScript("OnMouseWheel", function()
    if IsShiftKeyDown() then
        local currentSize = this:GetWidth()
        local newSize
        if arg1 > 0 then
            newSize = math.min(currentSize + DCR_BUTTON_SIZE_STEP, DCR_BUTTON_MAX_SIZE)
        else
            newSize = math.max(currentSize - DCR_BUTTON_SIZE_STEP, DCR_BUTTON_MIN_SIZE)
        end
        this:SetWidth(newSize)
        this:SetHeight(newSize)
        -- Save the size
        if Dcr_Saved then
            Dcr_Saved.ButtonSize = newSize
        end
    end
end)

-- Function to apply saved button size
function DecursiveCustomButton_ApplySavedSize()
    if Dcr_Saved and Dcr_Saved.ButtonSize then
        local size = Dcr_Saved.ButtonSize
        DecursiveCustomButton:SetWidth(size)
        DecursiveCustomButton:SetHeight(size)
    end
end

-- Function to apply saved button icon
function DecursiveCustomButton_ApplySavedIcon()
    if Dcr_Saved and Dcr_Saved.ButtonIcon then
        local iconIndex = Dcr_Saved.ButtonIcon
        if iconIndex >= 1 and iconIndex <= table.getn(DCR_BUTTON_ICONS) then
            DecursiveCustomButton:SetNormalTexture(DCR_BUTTON_ICONS[iconIndex])
        end
    end
end

-- Slash command to resize button: /dcrsize <size>
SLASH_DECURSIVESIZE1 = "/dcrsize"
SlashCmdList["DECURSIVESIZE"] = function(msg)
    local size = tonumber(msg)
    if size then
        size = math.max(DCR_BUTTON_MIN_SIZE, math.min(size, DCR_BUTTON_MAX_SIZE))
        DecursiveCustomButton:SetWidth(size)
        DecursiveCustomButton:SetHeight(size)
        if Dcr_Saved then
            Dcr_Saved.ButtonSize = size
        end
        DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00Decursive Button size set to:|r " .. size .. "px")
    else
        DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00Decursive Button:|r Current size is " .. DecursiveCustomButton:GetWidth() .. "px")
        DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00Usage:|r /dcrsize <size> (min: " .. DCR_BUTTON_MIN_SIZE .. ", max: " .. DCR_BUTTON_MAX_SIZE .. ")")
        DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00Tip:|r Hold Shift + Mouse Wheel to resize interactively")
    end
end

-- Slash command to change icon: /dcricon <number>
SLASH_DECURSIVEICON1 = "/dcricon"
SlashCmdList["DECURSIVEICON"] = function(msg)
    local iconIndex = tonumber(msg)
    if iconIndex and iconIndex >= 1 and iconIndex <= table.getn(DCR_BUTTON_ICONS) then
        DecursiveCustomButton:SetNormalTexture(DCR_BUTTON_ICONS[iconIndex])
        if Dcr_Saved then
            Dcr_Saved.ButtonIcon = iconIndex
        end
        DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00Decursive Button icon set to:|r #" .. iconIndex)
    else
        DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00Decursive Button:|r Available icons (1-" .. table.getn(DCR_BUTTON_ICONS) .. ")")
        DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00Usage:|r /dcricon <number>")
        DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00Tip:|r Shift + Right Click to cycle through icons")
    end
end

-- Register for VARIABLES_LOADED to restore saved settings
local sizeLoader = CreateFrame("Frame")
sizeLoader:RegisterEvent("VARIABLES_LOADED")
sizeLoader:SetScript("OnEvent", function()
    DecursiveCustomButton_ApplySavedSize()
    DecursiveCustomButton_ApplySavedIcon()
end)
