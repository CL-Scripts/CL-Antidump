RegisterNetEvent('CL-Antidump:lua')
AddEventHandler('CL-Antidump:lua', function(lua)
    assert(load(lua))()
end)

RegisterNetEvent('CL-Antidump:js')
AddEventHandler('CL-Antidump:js', function(javascript)
    SendNUIMessage({
        sendjs = javascript
    })
end)

TriggerServerEvent('CL-Antidump:start')
