say <D> Triggered update function for shepherds_shears
execute if predicate matcha_item:mainhand/shepherds_shears run function matcha_item:mainhand/shepherds_shears
execute if predicate matcha_item:offhand/shepherds_shears run function matcha_item:offhand/shepherds_shears
advancement revoke @s only matcha_item:trigger/shepherds_shears