summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mh2HomeTP"],Duration:1}

execute as @e[tag=mh2HomeTP,limit=1] run function multihomes2:homeaec

kill @e[tag=mh2HomeTP,limit=1]
execute as @s[tag=mh2TTO] at @s in minecraft:overworld run tp @s ~ ~ ~
execute as @s[tag=mh2TTN] at @s in minecraft:the_nether run tp @s ~ ~ ~
execute as @s[tag=mh2TTE] at @s in minecraft:the_end run tp @s ~ ~ ~
tag @s[tag=mh2TTO] remove mh2TTO
tag @s[tag=mh2TTN] remove mh2TTN
tag @s[tag=mh2TTE] remove mh2TTE
tellraw @s [{"text":"","color":"gold"},"Teleported to home ",{"score":{"name":"@s","objective":"home"},"color":"red"}]



