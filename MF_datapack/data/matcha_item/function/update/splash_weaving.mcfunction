say <D> Triggered update function for splash_weaving
execute if predicate matcha_item:mainhand/splash_weaving run function matcha_item:mainhand/splash_weaving
execute if predicate matcha_item:offhand/splash_weaving run function matcha_item:offhand/splash_weaving
advancement revoke @s only matcha_item:trigger/splash_weaving