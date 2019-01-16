tag @s add mh2PUSH
execute in minecraft:overworld run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mh2HomeNew","mh2Home"],Duration:2147483645}
execute as @e[tag=mh2Home,tag=!mh2HomeNew] if score @p[tag=mh2PUSH] mh2PID = @s mh2IDh if score @p[tag=mh2PUSH] sethome = @s mh2Nh run kill @s
execute store result score @e[tag=mh2HomeNew,limit=1,sort=nearest] mh2Xh run data get entity @s Pos[0]
execute store result score @e[tag=mh2HomeNew,limit=1,sort=nearest] mh2Yh run data get entity @s Pos[1]
execute store result score @e[tag=mh2HomeNew,limit=1,sort=nearest] mh2Zh run data get entity @s Pos[2]
execute store result score @e[tag=mh2HomeNew,limit=1,sort=nearest] mh2IDh run scoreboard players get @s mh2PID
execute store result score @e[tag=mh2HomeNew,limit=1,sort=nearest] mh2Dh run data get entity @s Dimension
execute store result score @e[tag=mh2HomeNew,limit=1,sort=nearest] mh2Nh run scoreboard players get @s sethome
tag @e[tag=mh2HomeNew] remove mh2HomeNew
tellraw @s [{"text":"","color":"gold"},"Home ",{"score":{"name":"@s","objective":"sethome"},"color":"red"}," set"]
tag @s remove mh2PUSH


