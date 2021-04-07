Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        print('do')
        TriggerEvent('skinchanger:getSkin', function(skinData)
            if skinData ~= nil then
                if skinData['beard_2'] > 0 and skinData['beard_2'] < 10 then
                    skinData['beard_2'] = skinData['beard_2'] + 1
                    TriggerEvent('skinchanger:loadSkin', skinData)
                    TriggerScriptEvent('esx_skin:save', skinData)
                end
            end
        end)
    
    end
end)