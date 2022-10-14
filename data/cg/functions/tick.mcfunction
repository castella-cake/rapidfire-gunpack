

#execute as @e[tag=cg.bul.hit] run tellraw @a [{"text":"アイアムア "},{"selector":"@s[tag=cg.bul.hit]"},{"text":"！！！！！！！！！！！！！！！！！！"}]

execute if entity @a[tag=!cg.playernumber.ready] as @r[tag=!cg.playernumber.ready] run function cg:playernumber

execute as @a[predicate=cg:select/fp5] at @s run function cg:items/fp5/player
execute as @a[tag=cg.fp5.ads] at @s run function cg:items/fp5/ads
execute as @e[type=armor_stand,tag=cg.bul.fp5] at @s run function cg:items/fp5/bullet

execute as @a[predicate=cg:select/plusround] at @s run function cg:items/plusround/player
execute as @a[tag=cg.plusround.ads] at @s run function cg:items/plusround/ads
execute as @e[type=armor_stand,tag=cg.bul.plusround] at @s run function cg:items/plusround/bullet

execute as @a[predicate=cg:select/s2b] at @s run function cg:items/s2b/player
execute as @e[type=armor_stand,tag=cg.bul.s2b] at @s run function cg:items/s2b/bullet
execute as @e[scores={cg.s2b.dmg=1..}] run function cg:items/s2b/hit_entity
execute as @e[scores={cg.s2b.dmg_c=1..}] run function cg:items/s2b/chit_entity
execute as @e[scores={cg.s2b.dmg=1..}] run function cg:items/s2b/hit_entity
execute as @e[scores={cg.s2b.dmg_c=1..}] run function cg:items/s2b/chit_entity

execute as @a[predicate=cg:select/aa40] at @s run function cg:items/aa40/player
execute as @a[tag=cg.aa40.ads] at @s run function cg:items/aa40/ads
execute as @e[type=armor_stand,tag=cg.bul.aa40] at @s run function cg:items/aa40/bullet

execute as @a[predicate=cg:select/paper] at @s run function cg:items/paper/player
execute as @e[type=armor_stand,tag=cg.bul.paper] at @s run function cg:items/paper/bullet

execute as @a[predicate=cg:select/quickround] at @s run function cg:items/quickround/player
execute as @e[type=armor_stand,tag=cg.bul.quickround] at @s run function cg:items/quickround/bullet
execute as @a[tag=cg.quickround.ads] at @s run function cg:items/quickround/ads

execute as @a[predicate=cg:select/shotround] at @s run function cg:items/shotround/player
execute as @e[type=armor_stand,tag=cg.bul.shotround] at @s run function cg:items/shotround/bullet
execute as @a[tag=cg.shotround.ads] at @s run function cg:items/shotround/ads
execute as @e[scores={cg.shotround.dmg=1..}] run function cg:items/shotround/hit_entity
execute as @e[scores={cg.shotround.dmg_c=1..}] run function cg:items/shotround/chit_entity
execute as @e[scores={cg.shotround.dmg=1..}] run function cg:items/shotround/hit_entity
execute as @e[scores={cg.shotround.dmg_c=1..}] run function cg:items/shotround/chit_entity

execute as @a[predicate=cg:select/primer] at @s run function cg:items/primer/player
execute as @e[type=armor_stand,tag=cg.bul.primer] at @s run function cg:items/primer/bullet
execute as @a[tag=cg.primer.ads] at @s run function cg:items/primer/ads

execute as @a[predicate=cg:select/sag18] at @s run function cg:items/sag18/player
execute as @a[tag=cg.sag18.ads] at @s run function cg:items/sag18/ads
execute as @e[type=armor_stand,tag=cg.bul.sag18] at @s run function cg:items/sag18/bullet

execute as @a[predicate=cg:select/hammershot] at @s run function cg:items/hammershot/player
execute as @a[tag=cg.hammershot.ads] at @s run function cg:items/hammershot/ads
execute as @e[type=armor_stand,tag=cg.bul.hammershot] at @s run function cg:items/hammershot/bullet
execute as @e[scores={cg.hammershot.dmg=1..}] run function cg:items/hammershot/hit_entity
execute as @e[scores={cg.hammershot.dmg_c=1..}] run function cg:items/hammershot/chit_entity
execute as @e[scores={cg.hammershot.dmg=1..}] run function cg:items/hammershot/hit_entity
execute as @e[scores={cg.hammershot.dmg_c=1..}] run function cg:items/hammershot/chit_entity

execute as @a[predicate=cg:select/pgi10] at @s run function cg:items/pgi10/player
execute as @a[tag=cg.pgi10.ads] at @s run function cg:items/pgi10/ads
execute as @e[type=armor_stand,tag=cg.bul.pgi10] at @s run function cg:items/pgi10/bullet

execute as @a[predicate=cg:select/lmr] at @s run function cg:items/lmr/player
execute as @a[predicate=cg:select/offhand_lmr,predicate=cg:select/air] at @s run function cg:items/lmr/offhand
execute as @a[tag=cg.lmr.ads] at @s run function cg:items/lmr/ads
execute as @e[type=armor_stand,tag=cg.bul.lmr] at @s run function cg:items/lmr/bullet

execute as @a[predicate=cg:select/ar50] at @s run function cg:items/ar50/player
execute as @a[predicate=cg:select/ar50_carbine] at @s run function cg:items/ar50/player_carbine
execute as @a[tag=cg.ar50.ads] at @s run function cg:items/ar50/ads
execute as @e[type=armor_stand,tag=cg.bul.ar50] at @s run function cg:items/ar50/bullet

execute as @a[predicate=cg:select/stw03] at @s run function cg:items/stw03/player
execute as @e[type=armor_stand,tag=cg.bul.stw03] at @s run function cg:items/stw03/bullet
execute as @a[tag=cg.stw03.ads] at @s run function cg:items/stw03/ads

execute as @a[predicate=cg:select/type150r] at @s run function cg:items/type150r/player
execute as @e[type=armor_stand,tag=cg.bul.type150r] at @s run function cg:items/type150r/bullet

execute as @a[predicate=cg:select/pb21] at @s run function cg:items/pb21/player
execute as @a[predicate=cg:select/offhand_pb21,predicate=cg:select/air] at @s run function cg:items/pb21/offhand
execute as @a[tag=cg.pb21.ads] at @s run function cg:items/pb21/ads
execute as @e[type=armor_stand,tag=cg.bul.pb21] at @s run function cg:items/pb21/bullet


execute as @e[type=armor_stand,tag=cg.bul] at @s run function cg:items/bullet/global_bul
execute as @e[type=armor_stand,tag=cg.bul_type.pistol] at @s run function cg:items/bullet/pistol_bul
execute as @e[type=armor_stand,tag=cg.bul_type.ar] at @s run function cg:items/bullet/ar_bul
execute as @e[type=armor_stand,tag=cg.bul_type.sg] at @s run function cg:items/bullet/sg_bul
execute as @e[type=armor_stand,tag=cg.bul_type.lmg] at @s run function cg:items/bullet/lmg_bul
execute as @e[type=armor_stand,tag=cg.bul_type.smg] at @s run function cg:items/bullet/smg_bul
execute as @e[type=armor_stand,tag=cg.bul_type.sniper] at @s run function cg:items/bullet/sniper_bul
execute as @e[type=armor_stand,tag=cg.bul_type.spr] at @s run function cg:items/bullet/spr_bul

execute as @a[predicate=cg:select/healthkit] at @s run function cg:items/gadgets/healthkit

execute as @a unless score @s cg.healthkit.cd matches 100.. run scoreboard players add @s cg.healthkit.cd 1
execute as @a[predicate=cg:select/armorkit] at @s run function cg:items/gadgets/armorkit

execute as @a unless score @s cg.armorkit.cd matches 100.. unless score @s cg.armorkit.cd_delay matches 1.. run scoreboard players add @s cg.armorkit.cd 1
execute as @a unless score @s cg.armorkit.cd matches 100.. unless score @s cg.armorkit.cd_delay matches 1.. if predicate cg:select/body_armor_lvex run scoreboard players add @s cg.armorkit.cd 1
execute as @a unless score @s cg.armorkit.cd matches 100.. unless score @s cg.armorkit.cd_delay matches 1.. run scoreboard players add @s cg.armorkit.cd_delay 2
execute as @a if score @s cg.armorkit.cd_delay matches 1.. run scoreboard players remove @s cg.armorkit.cd_delay 1

execute as @a[predicate=cg:select/niconicohonsya] at @s run function cg:items/gadgets/niconicohonsya/player
execute as @e[type=armor_stand,tag=cg.bul.niconicohonsya] at @s run function cg:items/gadgets/niconicohonsya/bullet

execute as @a[predicate=cg:select/healthkit] at @s run function cg:items/gadgets/healthkit

execute as @e[type=armor_stand,tag=cg.bul.pillager_gun] at @s run function cg:entity/pillager/pillager_gun/bullet

execute as @a[predicate=cg:select/vibrator] at @s run function cg:items/gadgets/vibrator/player
execute as @a[predicate=cg:select/offhand_vibrator] at @s run function cg:items/gadgets/vibrator/offhand
execute as @a[tag=cg.vibrator.ult] at @s run function cg:items/gadgets/vibrator/ult
execute as @a[tag=cg.vibrator.shot_sub] at @s run function cg:items/gadgets/vibrator/shot_sub
execute as @e[type=armor_stand,tag=cg.bul.vibrator] at @s run function cg:items/gadgets/vibrator/bullet
execute as @e[type=armor_stand,tag=cg.bul.vibrator_sub] at @s run function cg:items/gadgets/vibrator/bullet_sub
execute as @e[type=armor_stand,tag=cg.vibrator.effect] at @s run function cg:items/gadgets/vibrator/effect
execute as @a unless score @s cg.vibrator.ammo matches 100.. unless score @s cg.vibrator.delay matches 1.. unless score @s cg.vibrator.charge matches 1.. run scoreboard players add @s cg.vibrator.ammo 1
execute as @a unless score @s cg.vibrator.ammo matches 100.. unless score @s cg.vibrator.delay matches 1.. run scoreboard players add @s cg.vibrator.delay 3
execute as @a if score @s cg.vibrator.delay matches 1.. run scoreboard players remove @s cg.vibrator.delay 1

execute as @a if score @s cg.actionbar_hack matches 1.. run title @s actionbar [{"text":"","color":"#ff0000"},{"text":"??? "},{"text":" 異常を検出 "},{"text":" ???"}]
execute as @a if score @s cg.actionbar_hack matches 1.. if predicate cg:random/0_2 run title @s actionbar [{"text":"","color":"#ff0000"},{"text":"???? ","obfuscated":true},{"text":" 受信不可 "},{"text":" ?","obfuscated":true}]
execute as @a if score @s cg.actionbar_hack matches 1.. if predicate cg:random/0_2 run title @s actionbar [{"text":"","color":"#ff0000","underlined":true},{"text":"?? "},{"text":" 電波妨"},{"text":"害の可能性 ","obfuscated":true},{"text":" ?????"}]
execute as @a if score @s cg.actionbar_hack matches 1.. if predicate cg:random/0_2 run title @s actionbar [{"text":"","color":"#ff0000","italic":true},{"text":"???? ","obfuscated":true},{"text":" 修復","obfuscated":true},{"text":"試行"},{"text":"中... 000% ","obfuscated":true},{"text":" ?????","obfuscated":true}]
execute as @a if score @s cg.actionbar_hack matches 1.. if predicate cg:random/0_2 run title @s actionbar [{"text":"","color":"#ff0000"},{"text":"??? ","obfuscated":true},{"text":" 修復不可","obfuscated":true},{"text":" 失敗"},{"text":" ???????","obfuscated":true}]
execute as @a if score @s cg.actionbar_hack matches 1.. if predicate cg:random/0_2 run title @s actionbar [{"text":"","color":"#ff0000","bold":true},{"text":"???? "},{"text":" 受信できま","obfuscated":true},{"text":"せん "},{"text":" ?????"}]
execute as @a if score @s cg.actionbar_hack matches 1.. run scoreboard players remove @s cg.actionbar_hack 1

function cg:items/drop

execute as @e[tag=cg.pillager.fp5] at @s run function cg:entity/pillager/fp5
execute as @e[tag=cg.pillager.quickround] at @s run function cg:entity/pillager/quickround
execute as @e[tag=cg.pillager.ar50] at @s run function cg:entity/pillager/ar50

execute as @a[predicate=cg:select/body_armor_lv1] at @s run function cg:items/armor/lv1
execute as @a[predicate=cg:select/body_armor_lv2] at @s run function cg:items/armor/lv2
execute as @a[predicate=cg:select/body_armor_lv3] at @s run function cg:items/armor/lv3
execute as @a[predicate=cg:select/body_armor_lv4] at @s run function cg:items/armor/lv4
execute as @a[predicate=cg:select/body_armor_lvex] at @s run function cg:items/armor/lvex
execute as @a[scores={cg.armor.damage_taken=1..}] run scoreboard players reset @s cg.armor.damage_taken

function cg:craft/tick
execute as @a[predicate=cg:select/ammo_sml,scores={cg.use_gadget=1}] at @s run function cg:items/ammo_sml

#execute store result score $bullet_all cg.bullet_count if entity @e[tag=cg.bul]
#execute store result score $bullet_paper cg.bullet_count if entity @e[tag=cg.bul.paper]
#execute if score $bullet_all cg.bullet_count matches 40.. run tellraw @a {"text":"弾が40を超えています！！！"}
#execute if score $bullet_paper cg.bullet_count matches 40.. run tellraw @a {"text":"Paperの弾が40を超えています！！！"}

execute as @a[scores={cg.select=1..}] run tag @s add cg.select_gun
execute as @a[scores={cg.select=1..},predicate=!cg:select/niconicohonsya] run attribute @s generic.attack_speed base set -3.0
execute as @a[scores={cg.select=..0},tag=cg.select_gun] run attribute @s generic.attack_speed base set 4.0
execute as @a[scores={cg.select=..0},tag=cg.select_gun] run tag @s remove cg.select_gun
scoreboard players set @a[scores={cg.use=1..}] cg.use 0
scoreboard players set @a[scores={cg.use_gadget=1..}] cg.use_gadget 0
scoreboard players set @a[scores={cg.sneak=1..}] cg.sneak 0

execute as @a[scores={cg.dmgdisp_deldelay=1..}] run scoreboard players remove @s cg.dmgdisp_deldelay 1
execute as @a[scores={cg.dmgdisp_deldelay=..0}] run scoreboard players set @s cg.dmgdisp 0
execute as @a[scores={cg.dmgdisp_deldelay=..0}] run scoreboard players reset @s cg.dmgdisp_deldelay

execute as @a if score $ammo_mode cg.config matches 0 run scoreboard players set @s cg.ammo_sml 999
execute as @a if score $ammo_mode cg.config matches 0 run scoreboard players set @s cg.ammo_mid 999
execute as @a if score $ammo_mode cg.config matches 0 run scoreboard players set @s cg.ammo_lge 999
execute as @a if score $ammo_mode cg.config matches 0 run scoreboard players set @s cg.ammo_sg 999
execute as @a if score $ammo_mode cg.config matches 0 run scoreboard players set @s cg.ammo_bat 999
execute as @a if score $ammo_mode cg.config matches 0 run scoreboard players set @s cg.ammo_epic_lge 999

execute as @a[scores={cg.current_ammo=0}] if score $ammo_mode cg.config matches 0 run data modify storage cg:actbar_ammo current set from storage cg:actbar_ammo ammo_sml
execute as @a[scores={cg.current_ammo=1}] if score $ammo_mode cg.config matches 0 run data modify storage cg:actbar_ammo current set from storage cg:actbar_ammo ammo_mid
execute as @a[scores={cg.current_ammo=2}] if score $ammo_mode cg.config matches 0 run data modify storage cg:actbar_ammo current set from storage cg:actbar_ammo ammo_lge
execute as @a[scores={cg.current_ammo=3}] if score $ammo_mode cg.config matches 0 run data modify storage cg:actbar_ammo current set from storage cg:actbar_ammo ammo_sg
execute as @a[scores={cg.current_ammo=4}] if score $ammo_mode cg.config matches 0 run data modify storage cg:actbar_ammo current set from storage cg:actbar_ammo ammo_bat
execute as @a if score $ammo_mode cg.config matches 1 run data modify storage cg:actbar_ammo current set from storage cg:actbar_ammo inf

tag @e[tag=cg.bul.hit] remove cg.bul.hit