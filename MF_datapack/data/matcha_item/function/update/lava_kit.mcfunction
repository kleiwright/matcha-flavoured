say <D> Triggered update function for lava_kit
execute if predicate matcha_item:mainhand/lava_kit run function matcha_item:mainhand/lava_kit
execute if predicate matcha_item:offhand/lava_kit run function matcha_item:offhand/lava_kit
advancement revoke @s only matcha_item:trigger/lava_kit