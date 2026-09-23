say <D> Triggered update function for splash_pitch
execute if predicate matcha_item:mainhand/splash_pitch run function matcha_item:mainhand/splash_pitch
execute if predicate matcha_item:offhand/splash_pitch run function matcha_item:offhand/splash_pitch
advancement revoke @s only matcha_item:trigger/splash_pitch