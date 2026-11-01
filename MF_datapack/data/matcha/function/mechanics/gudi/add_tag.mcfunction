# I added this here beucase I wanted a little note particle every time you clicked them, but I was afraid to run this function more than once in /bind.mcfunction
execute at @n[type=#matcha:gudi_summons] run particle note ~ ~1 ~ 0 0 0 1 1

return run function matcha:mechanics/gudi/add_tag.macro with entity @s SelectedItem.components.minecraft:custom_data