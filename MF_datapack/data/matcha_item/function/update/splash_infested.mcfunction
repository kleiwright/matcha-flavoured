say <D> Triggered update function for splash_infested
execute if predicate matcha_item:mainhand/splash_infested run function matcha_item:mainhand/splash_infested
execute if predicate matcha_item:offhand/splash_infested run function matcha_item:offhand/splash_infested
advancement revoke @s only matcha_item:trigger/splash_infested