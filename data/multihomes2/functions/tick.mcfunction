scoreboard players add @a mh2PID 0
execute as @a[scores={mh2PID=..0}] at @s run function multihomes2:getnewpid

execute as @a[scores={sethome=1..}] at @s if score @s sethome > @s mh2HL unless score @s mh2HL matches ..-1 run tellraw @s [{"text":"","color":"red"},"Home limit is ",{"score":{"name":"@s","objective":"mh2HL"}}]
execute as @a[scores={sethome=1..}] at @s if score @s sethome > @s mh2HL unless score @s mh2HL matches ..-1 run scoreboard players reset @s sethome
execute as @a[scores={home=1..}] at @s if score @s home > @s mh2HL unless score @s mh2HL matches ..-1 run tellraw @s [{"text":"","color":"red"},"Home limit is ",{"score":{"name":"@s","objective":"mh2HL"}}]
execute as @a[scores={home=1..}] at @s if score @s home > @s mh2HL unless score @s mh2HL matches ..-1 run scoreboard players reset @s home
execute as @a[scores={delhome=1..}] at @s if score @s delhome > @s mh2HL unless score @s mh2HL matches ..-1 run tellraw @s [{"text":"","color":"red"},"Home limit is ",{"score":{"name":"@s","objective":"mh2HL"}}]
execute as @a[scores={delhome=1..}] at @s if score @s delhome > @s mh2HL unless score @s mh2HL matches ..-1 run scoreboard players reset @s delhome

execute as @a[scores={sethome=1..}] run function multihomes2:sethome
execute as @a[scores={home=1..}] at @s run function multihomes2:home
execute as @a[scores={delhome=1..}] at @s run function multihomes2:delhome
execute as @a[scores={listhomes=1..}] at @s run function multihomes2:listhomes

execute as @a[scores={mh2fakesethome=1..}] at @s if score @s mh2fakesethome > @s mh2fakelimit unless score @s mh2fakelimit matches ..-1 run tellraw @s [{"text":"","color":"red"},"Fake home limit is ",{"score":{"name":"@s","objective":"mh2fakelimit"}}]
execute as @a[scores={mh2fakesethome=1..}] at @s if score @s mh2fakesethome > @s mh2fakelimit unless score @s mh2fakelimit matches ..-1 run scoreboard players reset @s mh2fakesethome
execute as @a[scores={mh2fakehome=1..}] at @s if score @s mh2fakehome > @s mh2fakelimit unless score @s mh2fakelimit matches ..-1 run tellraw @s [{"text":"","color":"red"},"Fake home limit is ",{"score":{"name":"@s","objective":"mh2fakelimit"}}]
execute as @a[scores={mh2fakehome=1..}] at @s if score @s mh2fakehome > @s mh2fakelimit unless score @s mh2fakelimit matches ..-1 run scoreboard players reset @s mh2fakehome
execute as @a[scores={mh2fakedelhome=1..}] at @s if score @s mh2fakedelhome > @s mh2fakelimit unless score @s mh2fakelimit matches ..-1 run tellraw @s [{"text":"","color":"red"},"Fake home limit is ",{"score":{"name":"@s","objective":"mh2fakelimit"}}]
execute as @a[scores={mh2fakedelhome=1..}] at @s if score @s mh2fakedelhome > @s mh2fakelimit unless score @s mh2fakelimit matches ..-1 run scoreboard players reset @s mh2fakedelhome

execute as @a[scores={mh2fakesethome=1..}] run function multihomes2:fakesethome
execute as @a[scores={mh2fakehome=1..}] at @s run function multihomes2:fakehome
execute as @a[scores={mh2fakedelhome=1..}] at @s run function multihomes2:fakedelhome
execute as @a[scores={mh2fakelisthomes=1..}] at @s run function multihomes2:fakelisthomes

tp @e[tag=mh2Home] ~ 260 ~

scoreboard players reset @a sethome
scoreboard players reset @a home
scoreboard players reset @a delhome
scoreboard players reset @a listhomes
scoreboard players reset @a[tag=!mh2.admin] mh2fakeid
scoreboard players reset @a[tag=!mh2.admin] mh2fakelimit
scoreboard players reset @a mh2fakesethome
scoreboard players reset @a mh2fakehome
scoreboard players reset @a mh2fakedelhome
scoreboard players reset @a mh2fakelisthomes
execute as @a at @s unless score @s mh2HL matches 0 run scoreboard players enable @s sethome
execute as @a at @s unless score @s mh2HL matches 0 run scoreboard players enable @s home
execute as @a at @s unless score @s mh2HL matches 0 run scoreboard players enable @s delhome
execute as @a at @s unless score @s mh2HL matches 0 run scoreboard players enable @s listhomes
execute as @a[tag=mh2.admin] at @s run scoreboard players enable @s mh2fakeid
execute as @a[tag=mh2.admin] at @s run scoreboard players enable @s mh2fakelimit
execute as @a[tag=mh2.admin] at @s unless score @s mh2fakelimit matches 0 run scoreboard players enable @s mh2fakesethome
execute as @a[tag=mh2.admin] at @s unless score @s mh2fakelimit matches 0 run scoreboard players enable @s mh2fakehome
execute as @a[tag=mh2.admin] at @s unless score @s mh2fakelimit matches 0 run scoreboard players enable @s mh2fakedelhome
execute as @a[tag=mh2.admin] at @s unless score @s mh2fakelimit matches 0 run scoreboard players enable @s mh2fakelisthomes



function mh2upgradeutil:tick

function multihomes2:remperms
function multihomes2:config/permissions