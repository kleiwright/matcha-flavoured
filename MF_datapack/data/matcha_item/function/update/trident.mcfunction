say <D> Triggered update function for trident
execute if predicate matcha_item:mainhand/trident run function matcha_item:mainhand/trident
execute if predicate matcha_item:offhand/trident run function matcha_item:offhand/trident
advancement revoke @s only matcha_item:trigger/trident