local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('qb-weed:server:GiveWeed', function()
    local Player = QBCore.Functions.GetPlayer(source)
    print("Player", Player)

    local hungerAmt = math.random(10, 30)
    print("Hunger to take:", hungerAmt)
    local getHungy = Player.PlayerData.metadata.hunger - hungerAmt
    print("New hunger level:", getHungy)
    Player.Functions.SetMetaData('hunger', getHungy)
    TriggerClientEvent('hud:client:UpdateNeeds', source, getHungy, Player.PlayerData.metadata.thirst)
    print("Needs updated")

    local weedAmt = math.random(1, 6)
    exports['qb-inventory']:AddItem(source, "weedbag", weedAmt)
    print("Added weed")
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['weedbag'], 'add')
    print("Triggered itembox")
end)