say <D> Triggered update function for bubbling_mead
execute if predicate matcha_item:mainhand/bubbling_mead run function matcha_item:mainhand/bubbling_mead
execute if predicate matcha_item:offhand/bubbling_mead run function matcha_item:offhand/bubbling_mead
advancement revoke @s only matcha_item:trigger/bubbling_mead