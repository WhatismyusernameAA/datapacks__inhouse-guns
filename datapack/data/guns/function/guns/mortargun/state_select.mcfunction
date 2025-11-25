# check through states, if already aiming (and within aim ready phase) then fire, if not then aim
execute if entity @s[tag=gwp__aiming,tag=gwp__aiming-ready] run function guns:guns/mortargun/firing_select
execute if entity @s[tag=!gwp__aiming] run function guns:guns/mortargun/aiming_select

# to do: add functionality for akimbo shooting