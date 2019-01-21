tag @s add mh2ASU
execute store result score @e[tag=mh2HomeUpgrade,limit=1,sort=nearest] mh2Xh run scoreboard players get @s hX
execute store result score @e[tag=mh2HomeUpgrade,limit=1,sort=nearest] mh2Yh run scoreboard players get @s hY
execute store result score @e[tag=mh2HomeUpgrade,limit=1,sort=nearest] mh2Zh run scoreboard players get @s hZ
execute store result score @e[tag=mh2HomeUpgrade,limit=1,sort=nearest] mh2IDh run scoreboard players get @s hID
execute store result score @e[tag=mh2HomeUpgrade,limit=1,sort=nearest] mh2Nh run scoreboard players get @s hN
tag @e[tag=mh2HomeUpgrade] remove mh2HomeUpgrade
kill @s
tag @s remove mh2ASU


