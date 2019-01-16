tag @s add mh2PUDH
execute as @e[tag=mh2Home] if score @p[tag=mh2PUDH] mh2PID = @s mh2IDh if score @p[tag=mh2PUDH] delhome = @s mh2Nh run tag @s add mh2HomeDel
execute unless entity @e[tag=mh2HomeDel] run tellraw @s [{"text":"","color":"red"},"Home ",{"score":{"name":"@s","objective":"delhome"}}," doesn't exist"]
execute if entity @e[tag=mh2HomeDel] run tellraw @s [{"text":"","color":"gold"},"Home ",{"score":{"name":"@s","objective":"delhome"},"color":"red"}," deleted"]
execute if entity @e[tag=mh2HomeDel] run kill @e[tag=mh2HomeDel]
tag @e[tag=mh2HomeDel] remove mh2HomeDel
tag @s remove mh2PUDH