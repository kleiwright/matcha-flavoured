say <D> Triggered update function for uncooked_ramen
execute if predicate matcha_item:mainhand/uncooked_ramen run function matcha_item:mainhand/uncooked_ramen
execute if predicate matcha_item:offhand/uncooked_ramen run function matcha_item:offhand/uncooked_ramen
advancement revoke @s only matcha_item:trigger/uncooked_ramen