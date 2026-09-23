say <D> Triggered update function for electrum_shovel
execute if predicate matcha_item:mainhand/electrum_shovel run function matcha_item:enchants/electrum_shovel
execute if predicate matcha_item:offhand/electrum_shovel run function matcha_item:enchants/electrum_shovel
advancement revoke @s only matcha_item:trigger/electrum_shovel