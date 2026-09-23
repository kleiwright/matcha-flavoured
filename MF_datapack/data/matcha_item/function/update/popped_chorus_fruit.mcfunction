say <D> Triggered update function for popped_chorus_fruit
execute if predicate matcha_item:mainhand/popped_chorus_fruit run function matcha_item:mainhand/popped_chorus_fruit
execute if predicate matcha_item:offhand/popped_chorus_fruit run function matcha_item:offhand/popped_chorus_fruit
advancement revoke @s only matcha_item:trigger/popped_chorus_fruit