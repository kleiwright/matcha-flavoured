say <D> Triggered update function for exotic_seed_bundle
execute if predicate matcha_item:mainhand/exotic_seed_bundle run function matcha_item:mainhand/exotic_seed_bundle
execute if predicate matcha_item:offhand/exotic_seed_bundle run function matcha_item:offhand/exotic_seed_bundle
advancement revoke @s only matcha_item:trigger/exotic_seed_bundle