# True if saddled or harnessed
execute if items entity @s saddle minecraft:saddle run return 1
execute if items entity @s armor.body #minecraft:harnesses run return 1
# True if Tame tag is non-zero
return run data get entity @s Tame