playsound block.anvil.place master @a ~ ~ ~ 1 2 0
kill @e[type=item,nbt={Item:{"id":"minecraft:gunpowder",Count:1b}},distance=..1,limit=1]
kill @e[type=item,nbt={Item:{"id":"minecraft:copper_ingot",Count:1b}},distance=..1,limit=1]
summon item ~ ~ ~ {Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"小口径の弾薬箱(x64)","color":"white","bold":true,"italic":false}'}}}}
kill @e[type=item,nbt={Item:{"id":"minecraft:iron_ingot",Count:1b}},distance=..1,limit=1]