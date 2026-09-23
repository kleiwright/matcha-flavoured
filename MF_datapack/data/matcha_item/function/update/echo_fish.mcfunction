say <D> Triggered update function for echo_fish
execute if predicate matcha_item:mainhand/echo_fish run function matcha_item:mainhand/echo_fish
execute if predicate matcha_item:offhand/echo_fish run function matcha_item:offhand/echo_fish
advancement revoke @s only matcha_item:trigger/echo_fish