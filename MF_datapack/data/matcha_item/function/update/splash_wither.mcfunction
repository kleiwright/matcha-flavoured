say <D> Triggered update function for splash_wither
execute if predicate matcha_item:mainhand/splash_wither run function matcha_item:mainhand/splash_wither
execute if predicate matcha_item:offhand/splash_wither run function matcha_item:offhand/splash_wither
advancement revoke @s only matcha_item:trigger/splash_wither