RegisterCommand('tpw', function(source, args, raw) --//Zum Wegpunkt Teleportieren
    local playerPed = PlayerPedId() --//GetPlayerPed(-1)
    local waypoint = GetFirstBlipInfoId(8)
    local waypointCoords = GetBlipInfoIdCoord(waypoint)

    SetEntityCoords(playerPed, waypointCoords.x, waypointCoords.y, waypointCoords.z)

end)