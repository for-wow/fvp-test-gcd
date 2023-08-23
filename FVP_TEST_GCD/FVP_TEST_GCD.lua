local Addon = CreateFrame('FRAME')
Addon:RegisterEvent('ACTIONBAR_UPDATE_COOLDOWN')
Addon:SetScript('OnEvent', function()
    if not arg1 then
        SELECTED_CHAT_FRAME:AddMessage('Button number - Cooldown value')
        for i = 1, 12 do
            local start, duration, enable = GetActionCooldown(i)
            SELECTED_CHAT_FRAME:AddMessage('ActionBarButton' .. i .. ' - ' .. duration)
        end
    end
end)
