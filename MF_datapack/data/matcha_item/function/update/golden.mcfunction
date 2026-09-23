say <D> Triggered update function for golden
execute if predicate matcha_item:mainhand/golden run function matcha_item:mainhand/golden
execute if predicate matcha_item:offhand/golden run function matcha_item:offhand/golden
advancement revoke @s only matcha_item:trigger/golden