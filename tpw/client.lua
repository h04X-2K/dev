RegisterCommand('tpw', function(source, args, raw) --//Teleport to the waypoint
    local playerPed = PlayerPedId() --//GetPlayerPed(-1)
    local waypoint = GetFirstBlipInfoId(8)
    local waypointCoords = GetBlipInfoIdCoord(waypoint)

    SetEntityCoords(playerPed, waypointCoords.x, waypointCoords.y, waypointCoords.z)

end)