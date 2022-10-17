Thank you for downloading Shady's Weed pick script. If you  have any questions im not answering them :)

This script uses qb-target "third eye"

Credits to `Sharkie#6969` for essentailly writing the code <3

Dependencys

qb-core
qb-target
polyzones

How to download

1. Drag the `sd-weedpick` folder in to your servers recources

2. Drag all files inside html to your inventorys html (optional)

3. Add this line to your qb-core/shared/items.lua

```lua
['weedbag']                      = {['name'] = 'weedbag',                       ['label'] = 'Weed Bag', 				['weight'] = 1000,		['type'] = 'item',      ['image'] = 'weedbag.png',              ['unique'] = false,     ['useable'] = false,    ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A bag of weed'},
```

4. Ensure the script

```
ensure sd-weedpick
```
