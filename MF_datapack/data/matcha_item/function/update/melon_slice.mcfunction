say <D> Triggered update function for melon_slice
execute if predicate matcha_item:mainhand/melon_slice run function matcha_item:mainhand/melon_slice
execute if predicate matcha_item:offhand/melon_slice run function matcha_item:offhand/melon_slice
advancement revoke @s only matcha_item:trigger/melon_slice