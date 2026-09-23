say <D> Triggered update function for glow_berries
execute if predicate matcha_item:mainhand/glow_berries run function matcha_item:mainhand/glow_berries
execute if predicate matcha_item:offhand/glow_berries run function matcha_item:offhand/glow_berries
advancement revoke @s only matcha_item:trigger/glow_berries