say <D> Triggered update function for latke
execute if predicate matcha_item:mainhand/latke run function matcha_item:mainhand/latke
execute if predicate matcha_item:offhand/latke run function matcha_item:offhand/latke
advancement revoke @s only matcha_item:trigger/latke