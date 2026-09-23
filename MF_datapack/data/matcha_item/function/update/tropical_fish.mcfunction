say <D> Triggered update function for tropical_fish
execute if predicate matcha_item:mainhand/tropical_fish run function matcha_item:mainhand/tropical_fish
execute if predicate matcha_item:offhand/tropical_fish run function matcha_item:offhand/tropical_fish
advancement revoke @s only matcha_item:trigger/tropical_fish