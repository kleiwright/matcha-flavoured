say <D> Triggered update function for electrum_spear
execute if predicate matcha_item:mainhand/electrum_spear run function matcha_item:enchants/electrum_spear
execute if predicate matcha_item:offhand/electrum_spear run function matcha_item:enchants/electrum_spear
advancement revoke @s only matcha_item:trigger/electrum_spear