# CYakiGun fp5
data modify storage cg.damage_data fp5.normal set value {Damage:1.50,DamageType:"Projectile"}
data modify storage cg.damage_data fp5.headshot set value {Damage:3.00,DamageType:"Projectile"}

# CYakiGun plusround
data modify storage cg.damage_data plusround.normal set value {Damage:5.00,DamageType:"Projectile"}
data modify storage cg.damage_data plusround.headshot set value {Damage:8.00,DamageType:"Projectile"}

# CYakiGun aa40
data modify storage cg.damage_data a248.normal set value {Damage:4.80,DamageType:"Projectile"}
data modify storage cg.damage_data a248.headshot set value {Damage:6.00,DamageType:"Projectile"}

# CYakiGun paper
data modify storage cg.damage_data paper.normal set value {Damage:2.70,DamageType:"Projectile"}
data modify storage cg.damage_data paper.headshot set value {Damage:4.30,DamageType:"Projectile"}

# CYakiGun quickround
data modify storage cg.damage_data quickround.normal set value {Damage:9.10,DamageType:"Projectile"}
data modify storage cg.damage_data quickround.headshot set value {Damage:19.00,DamageType:"Projectile"}

# CYakiGun primer
data modify storage cg.damage_data primer.normal set value {Damage:11.00,DamageType:"Projectile"}
data modify storage cg.damage_data primer.headshot set value {Damage:25.00,DamageType:"Projectile"}

# CYakiGun sag18
data modify storage cg.damage_data sag18.normal set value {Damage:10.00,DamageType:"Projectile"}
data modify storage cg.damage_data sag18.headshot set value {Damage:21.00,DamageType:"Projectile"}

# CYakiGun pgi10
data modify storage cg.damage_data pgi10.normal set value {Damage:3.25,DamageType:"Projectile"}
data modify storage cg.damage_data pgi10.headshot set value {Damage:5.70,DamageType:"Projectile"}

# CYakiGun lmr
data modify storage cg.damage_data lmr.normal set value {Damage:3.60,DamageType:"Projectile"}
data modify storage cg.damage_data lmr.headshot set value {Damage:5.00,DamageType:"Projectile"}

# CYakiGun type150r
data modify storage cg.damage_data type150r.normal set value {Damage:3.80}
data modify storage cg.damage_data type150r.headshot set value {Damage:5.60}

# CYakiGun ar50
data modify storage cg.damage_data ar50.normal set value {Damage:4.80}
data modify storage cg.damage_data ar50.headshot set value {Damage:6.10}

# CYakiGun vibrator
data modify storage cg.damage_data vibrator.normal set value {Damage:5.00}
data modify storage cg.damage_data vibrator.entity set value {Damage:25.00}

# CYakiGun stw03
data modify storage cg.damage_data stw03.normal set value {Damage:2.80}
data modify storage cg.damage_data stw03.headshot set value {Damage:4.20}

tellraw @a [{"nbt":"prefix","storage":"cg:static","interpret":true},{"text":"リアルモードをロードしました。"}]