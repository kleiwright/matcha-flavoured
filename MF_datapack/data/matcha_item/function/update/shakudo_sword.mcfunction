say <D> Triggered update function for shakudo_sword
execute if predicate matcha_item:mainhand/shakudo_sword run function matcha_item:enchants/shakudo_sword
execute if predicate matcha_item:offhand/shakudo_sword run function matcha_item:enchants/shakudo_sword
advancement revoke @s only matcha_item:trigger/shakudo_sword