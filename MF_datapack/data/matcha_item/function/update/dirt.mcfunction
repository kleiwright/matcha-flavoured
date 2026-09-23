say <D> Triggered update function for dirt
execute if predicate matcha_item:mainhand/dirt run function matcha_item:mainhand/dirt
execute if predicate matcha_item:offhand/dirt run function matcha_item:offhand/dirt
advancement revoke @s only matcha_item:trigger/dirt