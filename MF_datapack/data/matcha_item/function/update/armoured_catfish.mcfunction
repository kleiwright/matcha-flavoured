say <D> Triggered update function for armoured_catfish
execute if predicate matcha_item:mainhand/armoured_catfish run function matcha_item:mainhand/armoured_catfish
execute if predicate matcha_item:offhand/armoured_catfish run function matcha_item:offhand/armoured_catfish
advancement revoke @s only matcha_item:trigger/armoured_catfish