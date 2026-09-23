say <D> Triggered update function for flying_fish
execute if predicate matcha_item:mainhand/flying_fish run function matcha_item:mainhand/flying_fish
execute if predicate matcha_item:offhand/flying_fish run function matcha_item:offhand/flying_fish
advancement revoke @s only matcha_item:trigger/flying_fish