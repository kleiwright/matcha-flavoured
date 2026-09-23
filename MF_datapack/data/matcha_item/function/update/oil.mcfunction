say <D> Triggered update function for oil
execute if predicate matcha_item:mainhand/oil run function matcha_item:mainhand/oil
execute if predicate matcha_item:offhand/oil run function matcha_item:offhand/oil
advancement revoke @s only matcha_item:trigger/oil