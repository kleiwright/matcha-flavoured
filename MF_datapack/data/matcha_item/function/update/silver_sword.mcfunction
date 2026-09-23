say <D> Triggered update function for silver_sword
execute if predicate matcha_item:mainhand/silver_sword run function matcha_item:enchants/silver_sword
execute if predicate matcha_item:offhand/silver_sword run function matcha_item:enchants/silver_sword
advancement revoke @s only matcha_item:trigger/silver_sword