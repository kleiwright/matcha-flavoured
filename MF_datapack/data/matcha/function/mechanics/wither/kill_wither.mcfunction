# Teleport low down to kill nether star (kill command may be unnecessary)
tp @s ~ -1000 ~
kill @s

# Particles and sound for effect (I'm not the best with particles; feel free to change them)
particle minecraft:dust_color_transition{from_color:[1.0f,0.0f,0.0f],to_color:[0.0f,0.0f,0.0f],scale:2} ~ ~ ~ 1 1 1 1 50
playsound minecraft:entity.wither.hurt hostile @a[distance=..50] ~ ~ ~ 2

# Refund skulls
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wither_skeleton_skull", count:3}}