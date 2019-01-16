tag @s add mh2PULH
execute as @e[tag=mh2Home] if score @p[tag=mh2PULH] mh2PID = @s mh2IDh run tag @s add mh2HomeList
execute unless entity @e[tag=mh2HomeList] run tellraw @s [{"text":"","color":"red"},"No homes set"]
execute if entity @e[tag=mh2HomeList] as @e[tag=mh2HomeList] at @s run tellraw @p[tag=mh2PULH] [{"text":"","color":"gold"},"Home ID: ",{"score":{"objective":"mh2Nh","name":"@s"},"color":"red"}," at (",{"score":{"objective":"mh2Xh","name":"@s"}},", ",{"score":{"objective":"mh2Yh","name":"@s"}},", ",{"score":{"objective":"mh2Zh","name":"@s"}},")"," in dimension ",{"score":{"objective":"mh2Dh","name":"@s"}}]
tag @e[tag=mh2HomeList] remove mh2HomeList
tag @s remove mh2PULH