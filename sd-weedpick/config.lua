Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true' 
Config.pickTime = 20000 -- How long it takes to pick weed

Config.TargetModels = {
    ['pick_weed_01'] = {
        models = `prop_weed_01`,
        options = {
            {
                type = "client",
                event = "qb-weed:client:pickweed",
                icon = "fa-solid fa-seedling",
                label = "Pick Weed",
            },
        },
        distance = 2.5
    },
}