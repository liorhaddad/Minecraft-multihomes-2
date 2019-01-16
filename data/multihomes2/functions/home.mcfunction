tag @s add mh2PUH
execute as @e[tag=mh2Home] if score @p[tag=mh2PUH] mh2PID = @s mh2IDh if score @p[tag=mh2PUH] home = @s mh2Nh run tag @s add mh2HomeUse
execute unless entity @e[tag=mh2HomeUse] run tellraw @s [{"text":"","color":"red"},"Home ",{"score":{"name":"@s","objective":"home"}}," doesn't exist"]
execute store result score @s mh2Dp run data get entity @s Dimension
execute unless entity @s[tag=mh2.multidimtp] unless score @s mh2Dp = @e[tag=mh2HomeUse,limit=1] mh2Dh run tellraw @s [{"text":"","color":"red"},"You must be in the same dimension as home ",{"score":{"name":"@s","objective":"home"}}]
execute unless entity @s[tag=mh2.multidimtp] unless score @s mh2Dp = @e[tag=mh2HomeUse,limit=1] mh2Dh run tag @e[tag=mh2HomeUse] remove mh2HomeUse
execute if entity @e[tag=mh2HomeUse] run function multihomes2:homecontinue
tag @e[tag=mh2HomeUse] remove mh2HomeUse
tag @s remove mh2PUH




