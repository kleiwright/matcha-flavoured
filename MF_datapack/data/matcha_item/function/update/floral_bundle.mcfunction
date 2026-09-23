say <D> Triggered update function for floral_bundle
execute if predicate matcha_item:mainhand/floral_bundle run function matcha_item:mainhand/floral_bundle
execute if predicate matcha_item:offhand/floral_bundle run function matcha_item:offhand/floral_bundle
advancement revoke @s only matcha_item:trigger/floral_bundle