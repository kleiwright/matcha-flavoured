say <D> Triggered update function for copper_axe
execute if predicate matcha_item:mainhand/copper_axe run function matcha_item:mainhand/copper_axe
execute if predicate matcha_item:offhand/copper_axe run function matcha_item:offhand/copper_axe
advancement revoke @s only matcha_item:trigger/copper_axe