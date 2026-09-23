say <D> Triggered update function for dough_from_water
execute if predicate matcha_item:mainhand/dough_from_water run function matcha_item:mainhand/dough_from_water
execute if predicate matcha_item:offhand/dough_from_water run function matcha_item:offhand/dough_from_water
advancement revoke @s only matcha_item:trigger/dough_from_water