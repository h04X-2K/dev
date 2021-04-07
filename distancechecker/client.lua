_menuPool = NativeUI.CreatePool()
local mainMenu

Citizen.CreateThread(function()
    while true do

        _menuPool:ProcessMenus()

        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local distance = Vdist(playerCoords, Config.Destination.x, Config.Destination.y, Config.Destination.z)

        if IsControlJustReleased(0, 38) then
            if distance < 3.0 then
                openMenu()
                ShowNotification('ja')
            else
                ShowNotification('nein')
            end
        end

        Citizen.Wait(1)

    end
end)

function openMenu()
    mainMenu = NativeUI.CreateMenu('Title', 'Beschreibung')
    _menuPool:Add(mainMenu)

    local testItem = NativeUI.CreateItem('Name', 'Desc')
    mainMenu:AddItem(testItem)

    mainMenu.OnItemSelect = function(sender, item, index)
        if item == testItem then
            ShowNotification('pressed')
        end
    end

    testItem.Activated = function(sender, index)
        ShowNotification('gedrückt')
    end

    mainMenu:Visible(true)

    _menuPool:MouseEdgeEnabled(false)
end

function ShowNotification(text)
	SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
	DrawNotification(false, true)
end