say <D> Triggered update function for chorus_mochi_recipe
execute if predicate matcha_item:mainhand/chorus_mochi_recipe run function matcha_item:mainhand/chorus_mochi_recipe
execute if predicate matcha_item:offhand/chorus_mochi_recipe run function matcha_item:offhand/chorus_mochi_recipe
advancement revoke @s only matcha_item:trigger/chorus_mochi_recipe