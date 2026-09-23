say <D> Triggered update function for white_egg
execute if predicate matcha_item:mainhand/white_egg run function matcha_item:mainhand/white_egg
execute if predicate matcha_item:offhand/white_egg run function matcha_item:offhand/white_egg
advancement revoke @s only matcha_item:trigger/white_egg