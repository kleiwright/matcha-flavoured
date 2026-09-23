say <D> Triggered update function for shakudo_pickaxe
execute if predicate matcha_item:mainhand/shakudo_pickaxe run function matcha_item:enchants/shakudo_pickaxe
execute if predicate matcha_item:offhand/shakudo_pickaxe run function matcha_item:enchants/shakudo_pickaxe
advancement revoke @s only matcha_item:trigger/shakudo_pickaxe