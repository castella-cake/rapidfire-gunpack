scoreboard players operation $pn_last cg.player_number += $pn_add cg.player_number
scoreboard players operation @s cg.player_number = $pn_last cg.player_number
tag @s add cg.playernumber.ready