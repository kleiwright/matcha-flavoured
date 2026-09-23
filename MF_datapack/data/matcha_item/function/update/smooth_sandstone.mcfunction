say <D> Triggered update function for smooth_sandstone
execute if predicate matcha_item:mainhand/smooth_sandstone run function matcha_item:mainhand/smooth_sandstone
execute if predicate matcha_item:offhand/smooth_sandstone run function matcha_item:offhand/smooth_sandstone
advancement revoke @s only matcha_item:trigger/smooth_sandstone