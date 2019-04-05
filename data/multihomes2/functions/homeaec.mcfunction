execute store result entity @s Pos[0] double 1 run scoreboard players get @e[tag=mh2HomeUse,limit=1] mh2Xh
execute store result entity @s Pos[1] double 1 run scoreboard players get @e[tag=mh2HomeUse,limit=1] mh2Yh
execute store result entity @s Pos[2] double 1 run scoreboard players get @e[tag=mh2HomeUse,limit=1] mh2Zh
execute store result score @s mh2Dtp run scoreboard players get @e[tag=mh2HomeUse,limit=1] mh2Dh
tag @e[tag=mh2HomeUse] remove mh2HomeUse
execute at @s run tp @p[tag=mh2PUH] ~.5 ~ ~.5
execute if score @s mh2Dtp matches 0 run tag @p[tag=mh2PUH] add mh2TTO
execute if score @s mh2Dtp matches -1 run tag @p[tag=mh2PUH] add mh2TTN
execute if score @s mh2Dtp matches 1 run tag @p[tag=mh2PUH] add mh2TTE