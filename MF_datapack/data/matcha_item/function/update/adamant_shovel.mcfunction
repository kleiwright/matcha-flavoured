say <D> Triggered update function for adamant_shovel
execute if predicate matcha_item:mainhand/adamant_shovel run function matcha_item:enchants/adamant_shovel
execute if predicate matcha_item:offhand/adamant_shovel run function matcha_item:enchants/adamant_shovel
advancement revoke @s only matcha_item:trigger/adamant_shovel