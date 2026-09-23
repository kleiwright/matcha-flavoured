say <D> Triggered update function for flour_from_flour_bag
execute if predicate matcha_item:mainhand/flour_from_flour_bag run function matcha_item:mainhand/flour_from_flour_bag
execute if predicate matcha_item:offhand/flour_from_flour_bag run function matcha_item:offhand/flour_from_flour_bag
advancement revoke @s only matcha_item:trigger/flour_from_flour_bag