local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('qb-weed:server:GiveWeed', function()
    local Player = QBCore.Functions.GetPlayer(source)

    local hungerAmt = math.random(10, 30)
    local getHungy = Player.PlayerData.metadata.hunger - hungerAmt
    Player.Functions.SetMetaData('hunger', getHungy)
    TriggerClientEvent('hud:client:UpdateNeeds', source, getHungy, Player.PlayerData.metadata.thirst)

    local weedAmt = math.random(1, 6)
    exports['qb-inventory']:AddItem(source, "weedbag", weedAmt)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['weedbag'], 'add')
end)
