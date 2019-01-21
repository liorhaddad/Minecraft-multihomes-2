datapack disable "file/multihomes_V1.5"
datapack disable "file/multihomes_V1.4"
datapack disable "file/multihomes_V1.3"
datapack disable "file/multihomes_V1.2"
datapack disable "file/multihomes_V1.1"
datapack disable "file/multihomes_V1.0"
datapack disable "file/multihomes_V1.5.zip"
datapack disable "file/multihomes_V1.4.zip"
datapack disable "file/multihomes_V1.3.zip"
datapack disable "file/multihomes_V1.2.zip"
datapack disable "file/multihomes_V1.1.zip"
datapack disable "file/multihomes_V1.0.zip"
execute as @a[scores={homesPID=1..}] at @s run scoreboard players operation @s mh2PID = @s homesPID
execute as @a at @s if score @s homesPID = @s mh2PID run scoreboard players reset @s homesPID
scoreboard players set @e[type=armor_stand,tag=homesHome] mh2Nums 1
execute if entity @e[type=armor_stand,tag=homesHome,scores={mh2Nums=1..}] as @e[type=armor_stand,tag=homesHome] run function mh2upgradeutil:armortoaec



