execute if predicate cg:select/chainmail_chestplate run particle block iron_block ~ ~ ~ 0.3 1.3 0.3 1 200
execute if predicate cg:select/iron_chestplate run particle block iron_block ~ ~ ~ 0.3 1.3 0.3 1 200
execute if predicate cg:select/golden_chestplate run particle block gold_block ~ ~ ~ 0.3 1.3 0.3 1 200
execute if predicate cg:select/diamond_chestplate run particle block diamond_block ~ ~ ~ 0.3 1.3 0.3 1 200
execute if predicate cg:select/netherite_chestplate run particle block netherite_block ~ ~ ~ 0.3 1.3 0.3 1 200
item replace entity @s armor.chest with air
playsound block.glass.break master @a ~ ~ ~ 1 1 0
playsound entity.blaze.hurt master @a ~ ~ ~ 1 0.1 0