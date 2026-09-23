say <D> Triggered update function for splash_slowness
execute if predicate matcha_item:mainhand/splash_slowness run function matcha_item:mainhand/splash_slowness
execute if predicate matcha_item:offhand/splash_slowness run function matcha_item:offhand/splash_slowness
advancement revoke @s only matcha_item:trigger/splash_slowness