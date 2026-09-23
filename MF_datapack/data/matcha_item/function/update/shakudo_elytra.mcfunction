say <D> Triggered update function for shakudo_elytra
execute if predicate matcha_item:mainhand/shakudo_elytra run function matcha_item:enchants/shakudo_elytra
execute if predicate matcha_item:offhand/shakudo_elytra run function matcha_item:enchants/shakudo_elytra
advancement revoke @s only matcha_item:trigger/shakudo_elytra