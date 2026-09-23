say <D> Triggered update function for splash_oozing
execute if predicate matcha_item:mainhand/splash_oozing run function matcha_item:mainhand/splash_oozing
execute if predicate matcha_item:offhand/splash_oozing run function matcha_item:offhand/splash_oozing
advancement revoke @s only matcha_item:trigger/splash_oozing