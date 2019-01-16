summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mh2HomeTP"],Duration:1}
execute store result entity @e[tag=mh2HomeTP,limit=1] Pos[0] double 1 run scoreboard players get @e[tag=mh2HomeUse,limit=1] mh2Xh
execute store result entity @e[tag=mh2HomeTP,limit=1] Pos[1] double 1 run scoreboard players get @e[tag=mh2HomeUse,limit=1] mh2Yh
execute store result entity @e[tag=mh2HomeTP,limit=1] Pos[2] double 1 run scoreboard players get @e[tag=mh2HomeUse,limit=1] mh2Zh
execute store result score @e[tag=mh2HomeTP,limit=1] mh2Dtp run scoreboard players get @e[tag=mh2HomeUse,limit=1] mh2Dh
tag @e[tag=mh2HomeUse] remove mh2HomeUse
execute at @e[tag=mh2HomeTP,limit=1] run tp @s ~.5 ~ ~.5
execute if score @e[tag=mh2HomeTP,limit=1] mh2Dtp matches 0 run tag @s add mh2TTO
execute if score @e[tag=mh2HomeTP,limit=1] mh2Dtp matches -1 run tag @s add mh2TTN
execute if score @e[tag=mh2HomeTP,limit=1] mh2Dtp matches 1 run tag @s add mh2TTE

kill @e[tag=mh2HomeTP,limit=1]
execute as @s[tag=mh2TTO] at @s in minecraft:overworld run tp @s ~ ~ ~
execute as @s[tag=mh2TTN] at @s in minecraft:the_nether run tp @s ~ ~ ~
execute as @s[tag=mh2TTE] at @s in minecraft:the_end run tp @s ~ ~ ~
tag @s[tag=mh2TTO] remove mh2TTO
tag @s[tag=mh2TTN] remove mh2TTN
tag @s[tag=mh2TTE] remove mh2TTE
tellraw @s [{"text":"","color":"gold"},"Teleported to home ",{"score":{"name":"@s","objective":"home"},"color":"red"}]



