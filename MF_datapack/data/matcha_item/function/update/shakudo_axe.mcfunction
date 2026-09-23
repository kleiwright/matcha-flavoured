say <D> Triggered update function for shakudo_axe
execute if predicate matcha_item:mainhand/shakudo_axe run function matcha_item:enchants/shakudo_axe
execute if predicate matcha_item:offhand/shakudo_axe run function matcha_item:enchants/shakudo_axe
advancement revoke @s only matcha_item:trigger/shakudo_axe