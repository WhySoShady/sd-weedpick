local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-weed:client:pickweed', function()
    local pickTime = pickTime

    if pickingWeed then return end
    QBCore.Functions.Notify('Picking Weed...')
    pickingWeed = true
    
    QBCore.Functions.Progressbar("pickin_weed", "Picking Weed...", pickTime, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@narcotics@trash",
        anim = "drop_front",
        flags = 1,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "anim@narcotics@trash", "drop_front", 1.0)
        pickingWeed = false
        local stressyBoi = math.random(10, 30)
        TriggerServerEvent('hud:server:GainStress', stressyBoi)
        TriggerServerEvent('qb-weed:server:GiveWeed')
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "anim@narcotics@trash", "drop_front", 1.0)
        QBCore.Functions.Notify(Lang:t("error.canceled"), "error")
        pickingWeed = false
    end)
end)
