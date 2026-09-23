say <D> Triggered update function for crystal_heart
execute if predicate matcha_item:mainhand/crystal_heart run function matcha_item:mainhand/crystal_heart
execute if predicate matcha_item:offhand/crystal_heart run function matcha_item:offhand/crystal_heart
advancement revoke @s only matcha_item:trigger/crystal_heart