say <D> Triggered update function for milk_bottle
execute if predicate matcha_item:mainhand/milk_bottle run function matcha_item:mainhand/milk_bottle
execute if predicate matcha_item:offhand/milk_bottle run function matcha_item:offhand/milk_bottle
advancement revoke @s only matcha_item:trigger/milk_bottle