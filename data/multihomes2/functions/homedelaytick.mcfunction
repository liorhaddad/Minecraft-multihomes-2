execute store result score @s mh2tpdelayD run scoreboard players get @s mh2tpdelay
execute store result score @s mh2tpdelayCD run scoreboard players get @s mh2tpdelayC
scoreboard players operation @s mh2tpdelayD /= 20 mh2Nums
scoreboard players operation @s mh2tpdelayCD /= 20 mh2Nums
execute store result score @s mh2tpdelayCD2 run scoreboard players get @s mh2tpdelayD
scoreboard players operation @s mh2tpdelayCD2 -= @s mh2tpdelayCD
title @s actionbar [{"text":"Please stay still for ","color":"gold"},{"score":{"name":"@s","objective":"mh2tpdelayD"}}," seconds [",{"score":{"name":"@s","objective":"mh2tpdelayCD2"}},"]"]
scoreboard players add @s mh2tpdelayC 1
execute if entity @s[tag=mh2move] run scoreboard players reset @s mh2tpdelayC
execute if score @s mh2tpdelayC >= @s mh2tpdelay store result score @s home run scoreboard players get @s mh2homedt
execute if score @s mh2tpdelayC >= @s mh2tpdelay run function multihomes2:home
execute if score @s mh2tpdelayC >= @s mh2tpdelay run title @s actionbar [""]
execute if score @s mh2tpdelayC >= @s mh2tpdelay run scoreboard players reset @s mh2tpdelayC