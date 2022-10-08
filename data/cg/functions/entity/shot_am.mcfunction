execute anchored eyes unless entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run tp @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] ^ ^ ^ facing entity @e[type=#cg:pillager_withoutplayer,sort=nearest,limit=1,distance=..30] eyes
execute anchored eyes if entity @a[distance=..30,gamemode=!creative,gamemode=!spectator] run tp @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] ^ ^ ^ facing entity @e[type=player,sort=nearest,limit=1,distance=..30,gamemode=!creative,gamemode=!spectator] eyes
execute if predicate cg:random/0_2 as @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~2 ~
execute if predicate cg:random/0_2 as @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~-2 ~
execute if predicate cg:random/0_2 as @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~ ~-3
execute if predicate cg:random/0_2 as @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~ ~3
execute if predicate cg:random/0_2 as @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~3 ~
execute if predicate cg:random/0_2 as @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~-3 ~
execute if predicate cg:random/0_2 as @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~ ~-3
execute if predicate cg:random/0_2 as @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~ ~3
tag @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] add cg.ready
#execute anchored eyes run particle flash ^ ^ ^0.5 0 0 0 1 1 