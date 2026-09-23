say <D> Triggered update function for cooked_pufferfish
execute if predicate matcha_item:mainhand/cooked_pufferfish run function matcha_item:mainhand/cooked_pufferfish
execute if predicate matcha_item:offhand/cooked_pufferfish run function matcha_item:offhand/cooked_pufferfish
advancement revoke @s only matcha_item:trigger/cooked_pufferfish