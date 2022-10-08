# インストール/リロード時に実行されるファンクション

data modify storage cg:static prefix set value '[{"text":""},{"text":"[RF:GunPack] ","bold":true}]'

tellraw @a [{"text":"RapidFire GunPack ","bold":true},{"text":"Season 0 Beta 1 season0beta1-beta1.6","color":"gray","italic": true},{"text":" ベータ版 \n","color":"yellow","bold":false},{"text":"\n使用しているライブラリー:\n"},{"text":"ScoreToHealth","clickEvent":{"action":"open_url","value":"https://github.com/Ai-Akaishi/ScoreToHealth"},"bold":true,"underlined":true},{"text":" - Created by Ai-Akaishi / Apache 2.0 License\n","bold":false,"color":"gray"},{"text":"MCCMD-ScoreDamage","clickEvent":{"action":"open_url","value":"https://github.com/ChenCMD/MCCMD-ScoreDamage"},"bold":true,"underlined":true},{"text":" - Created by ChenCMD / CC0-1.0 License\n","bold":false,"color":"gray"},{"text":"FloatCalc","clickEvent":{"action":"open_url","value":"https://github.com/txkodo/FloatCalc"},"bold":true,"underlined":true},{"text":" - Created by txkodo / MIT License\n","bold":false,"color":"gray"}]
tellraw @a [{"nbt":"prefix","storage":"cg:static","interpret":true},{"text":"インストール中..."}]
# CYakiGun Player
scoreboard objectives add cg.sneak minecraft.custom:sneak_time
scoreboard objectives add cg.use minecraft.used:crossbow
scoreboard objectives add cg.use_gadget minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add cg.drop minecraft.dropped:crossbow
scoreboard objectives add cg.select dummy
scoreboard objectives add cg.current_ammo dummy
scoreboard objectives add cg.recoil_temp dummy
scoreboard objectives add cg.offhand_temp dummy
scoreboard objectives remove cg.armor.damage_taken
scoreboard objectives add cg.armor.damage_taken minecraft.custom:damage_resisted
scoreboard objectives add cg.character dummy

# CYakigun Ammo
scoreboard objectives add cg.ammo_sml dummy
scoreboard objectives add cg.ammo_mid dummy
scoreboard objectives add cg.ammo_lge dummy
scoreboard objectives add cg.ammo_sg dummy
scoreboard objectives add cg.ammo_bat dummy
scoreboard objectives add cg.ammo_epic_lge dummy

# CYakiGun bullet
scoreboard objectives add cg.player_number dummy
scoreboard objectives add cg.bul_pn dummy
scoreboard objectives add cg.bul_pn.temp dummy
scoreboard objectives add cg.bul_hittype dummy
scoreboard objectives add cg.bul_hittype.temp dummy
scoreboard objectives add cg.bul_timer dummy
scoreboard objectives add cg.bul_is_disabled dummy
scoreboard objectives add cg.dmgdisp_temp dummy
scoreboard objectives add cg.dmgdisp dummy
scoreboard objectives add cg.dmgdisp_deldelay dummy
scoreboard objectives add cg.dmgdisp_sgpntemp dummy
scoreboard objectives add cg.bullet_count dummy

# CYakiGun fp5
scoreboard objectives add cg.fp5.ammo dummy
scoreboard objectives add cg.fp5.rld_timer dummy
data modify storage cg.damage_data fp5.normal set value {Damage:1.80}
data modify storage cg.damage_data fp5.headshot set value {Damage:3.20}

# CYakiGun plusround
scoreboard objectives add cg.plusround.ammo dummy
scoreboard objectives add cg.plusround.burst dummy
scoreboard objectives add cg.plusround.delay dummy
scoreboard objectives add cg.plusround.rld_timer dummy
data modify storage cg.damage_data plusround.normal set value {Damage:3.50}
data modify storage cg.damage_data plusround.headshot set value {Damage:4.80}

# CYakiGun s2b
scoreboard objectives add cg.s2b.ammo dummy
scoreboard objectives add cg.s2b.delay dummy
scoreboard objectives add cg.s2b.rld_timer dummy
scoreboard objectives add cg.s2b.dmg dummy
scoreboard objectives add cg.s2b.dmg_c dummy
data modify storage cg.damage_data s2b.normal set value {Damage:1.80}
data modify storage cg.damage_data s2b.headshot set value {Damage:3.80}

# CYakiGun aa40
scoreboard objectives add cg.aa40.ammo dummy
scoreboard objectives add cg.aa40.burst dummy
scoreboard objectives add cg.aa40.delay dummy
scoreboard objectives add cg.aa40.rld_timer dummy
data modify storage cg.damage_data aa40.normal set value {Damage:2.30}
data modify storage cg.damage_data aa40.headshot set value {Damage:3.40}

# CYakiGun paper
scoreboard objectives add cg.paper.ammo dummy
scoreboard objectives add cg.paper.burst dummy
scoreboard objectives add cg.paper.delay dummy
scoreboard objectives add cg.paper.rld_timer dummy
data modify storage cg.damage_data paper.normal set value {Damage:1.70}
data modify storage cg.damage_data paper.headshot set value {Damage:2.40}

# CYakiGun quickround
scoreboard objectives add cg.quickround.ammo dummy
scoreboard objectives add cg.quickround.rld_timer dummy
scoreboard objectives add cg.quickround.delay dummy
data modify storage cg.damage_data quickround.normal set value {Damage:7.30}
data modify storage cg.damage_data quickround.headshot set value {Damage:10.60}

# CYakiGun shotround
scoreboard objectives add cg.shotround.ammo dummy
scoreboard objectives add cg.shotround.delay dummy
scoreboard objectives add cg.shotround.rld_timer dummy
scoreboard objectives add cg.shotround.dmg dummy
scoreboard objectives add cg.shotround.dmg_c dummy
data modify storage cg.damage_data shotround.normal set value {Damage:1.40}
data modify storage cg.damage_data shotround.headshot set value {Damage:1.90}

# CYakiGun primer
scoreboard objectives add cg.primer.ammo dummy
scoreboard objectives add cg.primer.rld_timer dummy
scoreboard objectives add cg.primer.delay dummy
data modify storage cg.damage_data primer.normal set value {Damage:9.80}
data modify storage cg.damage_data primer.headshot set value {Damage:17.10}

# CYakiGun healthkit
scoreboard objectives add cg.healthkit.cd dummy
scoreboard objectives add cg.healthkit.delay dummy

# CYakiGun niconicohonsya
scoreboard objectives add cg.niconicohonsya.ammo dummy
scoreboard objectives add cg.niconicohonsya.rld_timer dummy

# CYakiGun sag18
scoreboard objectives add cg.sag18.ammo dummy
scoreboard objectives add cg.sag18.rld_timer dummy
data modify storage cg.damage_data sag18.normal set value {Damage:6.40}
data modify storage cg.damage_data sag18.headshot set value {Damage:8.90}

# CYakiGun hammershot
scoreboard objectives add cg.hammershot.ammo dummy
scoreboard objectives add cg.hammershot.burst dummy
scoreboard objectives add cg.hammershot.delay dummy
scoreboard objectives add cg.hammershot.rld_timer dummy
scoreboard objectives add cg.hammershot.dmg dummy
scoreboard objectives add cg.hammershot.dmg_c dummy
data modify storage cg.damage_data hammershot.normal set value {Damage:1.20}
data modify storage cg.damage_data hammershot.headshot set value {Damage:1.80}

# CYakiGun pgi10
scoreboard objectives add cg.pgi10.ammo dummy
scoreboard objectives add cg.pgi10.burst dummy
scoreboard objectives add cg.pgi10.rld_timer dummy
data modify storage cg.damage_data pgi10.normal set value {Damage:2.00}
data modify storage cg.damage_data pgi10.headshot set value {Damage:3.60}

# CYakiGun lmr
scoreboard objectives add cg.lmr.ammo dummy
scoreboard objectives add cg.lmr.burst dummy
scoreboard objectives add cg.lmr.delay dummy
scoreboard objectives add cg.lmr.rld_timer dummy
data modify storage cg.damage_data lmr.normal set value {Damage:1.70}
data modify storage cg.damage_data lmr.headshot set value {Damage:3.80}

# CYakiGun type150r
scoreboard objectives add cg.type150r.ammo dummy
scoreboard objectives add cg.type150r.burst dummy
scoreboard objectives add cg.type150r.delay dummy
scoreboard objectives add cg.type150r.rld_timer dummy
data modify storage cg.damage_data type150r.normal set value {Damage:2.30}
data modify storage cg.damage_data type150r.headshot set value {Damage:3.60}

# CYakiGun ar50
scoreboard objectives add cg.ar50.ammo dummy
scoreboard objectives add cg.ar50.burst dummy
scoreboard objectives add cg.ar50.delay dummy
scoreboard objectives add cg.ar50.rld_timer dummy
data modify storage cg.damage_data ar50.normal set value {Damage:2.30}
data modify storage cg.damage_data ar50.headshot set value {Damage:3.20}

# CYakiGun pillager
scoreboard objectives add cg.pillager.re.delay dummy
scoreboard objectives add cg.pillager.burst dummy
scoreboard objectives add cg.pillager.random_timer dummy

# CYakiGun Armor
scoreboard objectives add cg.armor.test dummy
scoreboard objectives add cg.armor.damage dummy
scoreboard objectives add cg.armor.max dummy
scoreboard objectives add cg.armor.result_temp dummy
scoreboard objectives add cg.armor.per_temp dummy
scoreboard objectives add cg.armor.value dummy

# CYakiGun vibrator
scoreboard objectives add cg.vibrator.ammo dummy
scoreboard objectives add cg.vibrator.delay dummy
scoreboard objectives add cg.vibrator.charge dummy
scoreboard objectives add cg.vibrator.beat dummy
data modify storage cg.damage_data vibrator.normal set value {Damage:5.00}
data modify storage cg.damage_data vibrator.entity set value {Damage:25.00}
data modify storage cg.damage_data vibrator.warden set value {Damage:50.00}

# CYakiGun stw03
scoreboard objectives add cg.stw03.ammo dummy
scoreboard objectives add cg.stw03.rld_timer dummy
scoreboard objectives add cg.stw03.delay dummy
data modify storage cg.damage_data stw03.normal set value {Damage:3.10}
data modify storage cg.damage_data stw03.headshot set value {Damage:5.20}

# CYakiGun EMP
scoreboard objectives add cg.actionbar_hack dummy

# CYakiGun armorkit
scoreboard objectives add cg.armorkit.use_timer dummy
scoreboard objectives add cg.armorkit.cd dummy
scoreboard objectives add cg.armorkit.cd_delay dummy

# CYakiGun pb21
scoreboard objectives add cg.pb21.ammo dummy
scoreboard objectives add cg.pb21.burst dummy
scoreboard objectives add cg.pb21.mode dummy
scoreboard objectives add cg.pb21.burst_delay dummy
scoreboard objectives add cg.pb21.delay dummy
scoreboard objectives add cg.pb21.rld_timer dummy
data modify storage cg.damage_data pb21.normal set value {Damage:1.80}
data modify storage cg.damage_data pb21.headshot set value {Damage:2.80}

tellraw @a [{"nbt":"prefix","storage":"cg:static","interpret":true},{"text":"ベースをインストールしました。"}]

scoreboard objectives add cg.config dummy
execute unless score $ammo_mode cg.config matches 0.. run scoreboard players set $ammo_mode cg.config 0
execute unless score $real_mode cg.config matches 0.. run scoreboard players set $real_mode cg.config 0
execute unless score $static_2x cg.config matches 2 run scoreboard players set $static_2x cg.config 2
execute unless score $static_1000x cg.config matches 1000 run scoreboard players set $static_1000x cg.config 1000
execute unless score $pn_add cg.player_number matches 1 run scoreboard players set $pn_add cg.player_number 1
execute unless score $pn_last cg.player_number matches 0.. run scoreboard players set $pn_last cg.player_number 0
execute unless score $static_1 cg.config matches 1 run scoreboard players set $static_1 cg.config 1
execute unless score $static_armormax cg.config matches 200000 run scoreboard players set $static_armormax cg.config 200000

data modify storage cg:actbar_ammo ammo_sml set value '[{"score":{"name":"@s","objective": "cg.ammo_sml"}}]'
data modify storage cg:actbar_ammo ammo_mid set value '[{"score":{"name":"@s","objective": "cg.ammo_mid"}}]'
data modify storage cg:actbar_ammo ammo_lge set value '[{"score":{"name":"@s","objective": "cg.ammo_lge"}}]'
data modify storage cg:actbar_ammo ammo_sg set value '[{"score":{"name":"@s","objective": "cg.ammo_sg"}}]'
data modify storage cg:actbar_ammo ammo_bat set value '[{"score":{"name":"@s","objective": "cg.ammo_bat"}}]'
data modify storage cg:actbar_ammo inf set value '[{"text":"∞"}]'
data modify storage cg:actbar_ammo current set value '[{"text":"?"}]'
data modify storage cg:actionbar text set value '[{"text":""}]'

tellraw @a [{"nbt":"prefix","storage":"cg:static","interpret":true},{"text":"コンフィグの作成が完了しました。"}]
#tellraw @a [{"nbt":"prefix","storage":"cg:static","interpret":true},{"text":"データパックの連携を確認します..."}]
