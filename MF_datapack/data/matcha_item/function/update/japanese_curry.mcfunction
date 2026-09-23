say <D> Triggered update function for japanese_curry
execute if predicate matcha_item:mainhand/japanese_curry run function matcha_item:mainhand/japanese_curry
execute if predicate matcha_item:offhand/japanese_curry run function matcha_item:offhand/japanese_curry
advancement revoke @s only matcha_item:trigger/japanese_curry