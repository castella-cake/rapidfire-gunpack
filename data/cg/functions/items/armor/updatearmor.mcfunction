#tellraw @a [{"text":"max"},{"score":{"name":"@s","objective": "cg.armor.max"}}]
#tellraw @a [{"text":"dmg"},{"score":{"name":"@s","objective": "cg.armor.damage"}}]
scoreboard players set $static_armormax_10000x cg.config 200000
scoreboard players set $static_armormax cg.config 20


# cg.armor.damage(現在の削れてるアーマー値)をfcのfloatを入れるストレージに突っ込む
execute store result storage floatcalc: float float 1 run scoreboard players get @s cg.armor.damage
#tellraw @a [{"text":"ope1_fcfloat(dmg突っ込み)"},{"nbt":"float","storage":"floatcalc:"}]
# floatを専用データに変換して、その結果はxに入る
function floatcalc:api/from_float
# xに入った専用データを、armor_temp_damageに逃がす
data modify storage cg: armor_temp_damage set from storage floatcalc: x

# maxで同じことをやる
execute store result storage floatcalc: float float 1 run scoreboard players get @s cg.armor.max
#tellraw @a [{"text":"ope1_fcfloat(max突っ込み)"},{"nbt":"float","storage":"floatcalc:"}]
function floatcalc:api/from_float
data modify storage cg: armor_temp_max set from storage floatcalc: x

# x / y で計算する、結果はxに入る
data modify storage floatcalc: x set from storage cg: armor_temp_damage
data modify storage floatcalc: y set from storage cg: armor_temp_max
function floatcalc:api/div

# 結果をfloatに変換する
function floatcalc:api/to_float

#tellraw @a [{"text":"ope1_fcdata(計算後)"},{"nbt":"float","storage":"floatcalc:"}]

# 10000倍してscoreに入れる
execute store result score @s cg.armor.per_temp run data get storage floatcalc: float 10000
# * 20(.)0000
scoreboard players operation @s cg.armor.per_temp *= $static_armormax_10000x cg.config

# ストレージで整数に戻して、スコアに戻す
execute store result storage cg: armor_temp_normal int 0.00000001 run scoreboard players get @s cg.armor.per_temp
execute store result score @s cg.armor.per_temp run data get storage cg: armor_temp_normal
#tellraw @a [{"text":"整数戻し後"},{"score":{"name":"@s","objective": "cg.armor.per_temp"}}]

scoreboard players operation @s cg.armor.result_temp = $static_armormax cg.config
#tellraw @a [{"text":"20設定 "},{"score":{"name":"@s","objective": "cg.armor.result_temp"}}]
scoreboard players operation @s cg.armor.result_temp -= @s cg.armor.per_temp

#tellraw @a [{"text":"最終結果 "},{"score":{"name":"@s","objective": "cg.armor.result_temp"}}]

# storeしておしまい
execute store result entity @e[tag=cg.armor.armorstand,sort=nearest,limit=1] ArmorItems[2].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s cg.armor.result_temp