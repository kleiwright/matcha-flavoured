say <D> Triggered update function for splash_wind_charged
execute if predicate matcha_item:mainhand/splash_wind_charged run function matcha_item:mainhand/splash_wind_charged
execute if predicate matcha_item:offhand/splash_wind_charged run function matcha_item:offhand/splash_wind_charged
advancement revoke @s only matcha_item:trigger/splash_wind_charged