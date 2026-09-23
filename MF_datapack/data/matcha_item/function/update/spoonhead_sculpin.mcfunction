say <D> Triggered update function for spoonhead_sculpin
execute if predicate matcha_item:mainhand/spoonhead_sculpin run function matcha_item:mainhand/spoonhead_sculpin
execute if predicate matcha_item:offhand/spoonhead_sculpin run function matcha_item:offhand/spoonhead_sculpin
advancement revoke @s only matcha_item:trigger/spoonhead_sculpin