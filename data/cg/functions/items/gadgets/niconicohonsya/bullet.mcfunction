tp @s ^ ^ ^1 ~ ~2

execute as @e[type=armor_stand,tag=cg.bul.niconicohonsya] at @s unless block ~ ~ ~ #cg:ignore run playsound entity.generic.explode master @a ~ ~ ~ 1 1 0
execute as @e[type=armor_stand,tag=cg.bul.niconicohonsya] at @s unless block ~ ~ ~ #cg:ignore run playsound entity.generic.explode master @a ~ ~ ~ 1 1 0
execute as @e[type=armor_stand,tag=cg.bul.niconicohonsya] at @s unless block ~ ~ ~ #cg:ignore run playsound entity.generic.extinguish_fire master @a ~ ~ ~ 1 1 0
execute as @e[type=armor_stand,tag=cg.bul.niconicohonsya] at @s unless block ~ ~ ~ #cg:ignore run summon fireball ~ ~1 ~ {ExplosionPower:3b,power:[0.0,-1.0,0.0]}
execute as @e[type=armor_stand,tag=cg.bul.niconicohonsya] at @s unless block ~ ~ ~ #cg:ignore run kill @s