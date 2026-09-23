say <D> Triggered update function for shakudo_spear
execute if predicate matcha_item:mainhand/shakudo_spear run function matcha_item:enchants/shakudo_spear
execute if predicate matcha_item:offhand/shakudo_spear run function matcha_item:enchants/shakudo_spear
advancement revoke @s only matcha_item:trigger/shakudo_spear