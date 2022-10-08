execute anchored eyes run tp @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] ^ ^ ^ ~ ~
scoreboard players operation @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] cg.bul_pn = @s cg.player_number
execute anchored eyes run tag @e[tag=cg.bul,tag=!cg.ready,sort=nearest,limit=1] add cg.ready
#execute anchored eyes run particle flash ^ ^ ^0.5 0 0 0 1 1 