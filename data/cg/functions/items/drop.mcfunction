execute as @a[scores={cg.drop=1..},predicate=!cg:select/air] run scoreboard players set @s cg.drop 0
execute as @a[scores={cg.drop=1..,cg.select=1}] at @s run function cg:give/fp5
execute as @a[scores={cg.drop=1..,cg.select=2}] at @s run function cg:give/plusround
execute as @a[scores={cg.drop=1..,cg.select=3}] at @s run function cg:give/s2b
execute as @a[scores={cg.drop=1..,cg.select=4}] at @s run function cg:give/aa40
execute as @a[scores={cg.drop=1..,cg.select=5}] at @s run function cg:give/paper
execute as @a[scores={cg.drop=1..,cg.select=6}] at @s run function cg:give/quickround
execute as @a[scores={cg.drop=1..,cg.select=7}] at @s run function cg:give/shotround
execute as @a[scores={cg.drop=1..,cg.select=8}] at @s run function cg:give/primer
execute as @a[scores={cg.drop=1..,cg.select=9}] at @s run function cg:give/niconicohonsya
execute as @a[scores={cg.drop=1..,cg.select=10}] at @s run function cg:give/sag18
execute as @a[scores={cg.drop=1..,cg.select=11}] at @s run function cg:give/hammershot
execute as @a[scores={cg.drop=1..,cg.select=12}] at @s run function cg:give/pgi10
execute as @a[scores={cg.drop=1..,cg.select=13}] at @s run function cg:give/lmr
execute as @a[scores={cg.drop=1..,cg.select=14}] at @s run function cg:give/type150r
execute as @a[scores={cg.drop=1..,cg.select=15}] at @s run function cg:give/ar50
execute as @a[scores={cg.drop=1..,cg.select=16}] at @s run function cg:give/ar50_carbine
execute as @a[scores={cg.drop=1..,cg.select=17}] at @s run function cg:give/stw03
execute as @a[scores={cg.drop=1..,cg.select=18}] at @s run function cg:give/pb21

# +1発を再現する場合はここを最大容量から+1発にしておく
execute as @a[predicate=cg:select/fp5,scores={cg.drop=1..},tag=!cg.fp5.reload] unless score @s cg.fp5.ammo matches 17 run tag @s add cg.fp5.reload
execute as @a[predicate=cg:select/plusround,scores={cg.drop=1..},tag=!cg.plusround.reload] unless score @s cg.plusround.ammo matches 25 run tag @s add cg.plusround.reload
execute as @a[predicate=cg:select/s2b,scores={cg.drop=1..},tag=!cg.s2b.reload] unless score @s cg.s2b.ammo matches 2 run tag @s add cg.s2b.reload
execute as @a[predicate=cg:select/aa40,scores={cg.drop=1..},tag=!cg.aa40.reload] unless score @s cg.aa40.ammo matches 33 run tag @s add cg.aa40.reload
execute as @a[predicate=cg:select/paper,scores={cg.drop=1..},tag=!cg.paper.reload] unless score @s cg.paper.ammo matches 25 run tag @s add cg.paper.reload
execute as @a[predicate=cg:select/quickround,scores={cg.drop=1..},tag=!cg.quickround.reload] unless score @s cg.quickround.ammo matches 6 run tag @s add cg.quickround.reload
execute as @a[predicate=cg:select/shotround,scores={cg.drop=1..},tag=!cg.shotround.reload] unless score @s cg.shotround.ammo matches 4 run tag @s add cg.shotround.reload
execute as @a[predicate=cg:select/primer,scores={cg.drop=1..},tag=!cg.primer.reload] unless score @s cg.primer.ammo matches 4 run tag @s add cg.primer.reload
execute as @a[predicate=cg:select/niconicohonsya,scores={cg.drop=1..},tag=!cg.niconicohonsya.reload] unless score @s cg.niconicohonsya.ammo matches 1 run tag @s add cg.niconicohonsya.reload
execute as @a[predicate=cg:select/sag18,scores={cg.drop=1..},tag=!cg.sag18.reload] unless score @s cg.sag18.ammo matches 1 run tag @s add cg.sag18.reload
execute as @a[predicate=cg:select/hammershot,scores={cg.drop=1..},tag=!cg.hammershot.reload] unless score @s cg.hammershot.ammo matches 17 run tag @s add cg.hammershot.reload
execute as @a[predicate=cg:select/pgi10,scores={cg.drop=1..},tag=!cg.pgi10.reload] unless score @s cg.pgi10.ammo matches 33 run tag @s add cg.pgi10.reload
execute as @a[predicate=cg:select/lmr,scores={cg.drop=1..},tag=!cg.lmr.reload] unless score @s cg.lmr.ammo matches 65 run tag @s add cg.lmr.reload
execute as @a[predicate=cg:select/type150r,scores={cg.drop=1..},tag=!cg.type150r.reload] unless score @s cg.type150r.ammo matches 31 run tag @s add cg.type150r.reload
execute as @a[predicate=cg:select/ar50,scores={cg.drop=1..},tag=!cg.ar50.reload] unless score @s cg.ar50.ammo matches 22 run tag @s add cg.ar50.reload
execute as @a[predicate=cg:select/ar50_carbine,scores={cg.drop=1..},tag=!cg.ar50.reload] unless score @s cg.ar50.ammo matches 22 run tag @s add cg.ar50.reload
execute as @a[predicate=cg:select/stw03,scores={cg.drop=1..},tag=!cg.stw03.reload] unless score @s cg.stw03.ammo matches 13 run tag @s add cg.stw03.reload
execute as @a[predicate=cg:select/pb21,scores={cg.drop=1..},tag=!cg.pb21.reload] unless score @s cg.pb21.ammo matches 33 run tag @s add cg.pb21.reload

execute as @a[scores={cg.drop=1..}] run scoreboard players reset @s cg.drop

execute as @a[predicate=!cg:select/gun] unless score @s cg.select matches 0 run scoreboard players set @s cg.select 0
execute as @a[predicate=cg:select/fp5] unless score @s cg.select matches 1 run scoreboard players set @s cg.select 1
execute as @a[predicate=cg:select/plusround] unless score @s cg.select matches 2 run scoreboard players set @s cg.select 2
execute as @a[predicate=cg:select/s2b] unless score @s cg.select matches 3 run scoreboard players set @s cg.select 3
execute as @a[predicate=cg:select/aa40] unless score @s cg.select matches 4 run scoreboard players set @s cg.select 4
execute as @a[predicate=cg:select/paper] unless score @s cg.select matches 5 run scoreboard players set @s cg.select 5
execute as @a[predicate=cg:select/quickround] unless score @s cg.select matches 6 run scoreboard players set @s cg.select 6
execute as @a[predicate=cg:select/shotround] unless score @s cg.select matches 7 run scoreboard players set @s cg.select 7
execute as @a[predicate=cg:select/primer] unless score @s cg.select matches 8 run scoreboard players set @s cg.select 8
execute as @a[predicate=cg:select/niconicohonsya] unless score @s cg.select matches 9 run scoreboard players set @s cg.select 9
execute as @a[predicate=cg:select/sag18] unless score @s cg.select matches 10 run scoreboard players set @s cg.select 10
execute as @a[predicate=cg:select/hammershot] unless score @s cg.select matches 11 run scoreboard players set @s cg.select 11
execute as @a[predicate=cg:select/pgi10] unless score @s cg.select matches 12 run scoreboard players set @s cg.select 12
execute as @a[predicate=cg:select/lmr] unless score @s cg.select matches 13 run scoreboard players set @s cg.select 13
execute as @a[predicate=cg:select/type150r] unless score @s cg.select matches 14 run scoreboard players set @s cg.select 14
execute as @a[predicate=cg:select/ar50] unless score @s cg.select matches 15 run scoreboard players set @s cg.select 15
execute as @a[predicate=cg:select/ar50_carbine] unless score @s cg.select matches 16 run scoreboard players set @s cg.select 16
execute as @a[predicate=cg:select/stw03] unless score @s cg.select matches 17 run scoreboard players set @s cg.select 17
execute as @a[predicate=cg:select/pb21] unless score @s cg.select matches 18 run scoreboard players set @s cg.select 18