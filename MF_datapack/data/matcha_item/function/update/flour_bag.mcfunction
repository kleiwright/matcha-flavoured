say <D> Triggered update function for flour_bag
execute if predicate matcha_item:mainhand/flour_bag run function matcha_item:mainhand/flour_bag
execute if predicate matcha_item:offhand/flour_bag run function matcha_item:offhand/flour_bag
advancement revoke @s only matcha_item:trigger/flour_bag