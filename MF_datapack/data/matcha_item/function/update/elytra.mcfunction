say <D> Triggered update function for elytra
execute if predicate matcha_item:mainhand/elytra run function matcha_item:enchants/elytra
execute if predicate matcha_item:offhand/elytra run function matcha_item:enchants/elytra
advancement revoke @s only matcha_item:trigger/elytra