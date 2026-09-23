say <D> Triggered update function for stabilised_estus
execute if predicate matcha_item:mainhand/stabilised_estus run function matcha_item:mainhand/stabilised_estus
execute if predicate matcha_item:offhand/stabilised_estus run function matcha_item:offhand/stabilised_estus
advancement revoke @s only matcha_item:trigger/stabilised_estus