say <D> Triggered update function for seed_bundle
execute if predicate matcha_item:mainhand/seed_bundle run function matcha_item:mainhand/seed_bundle
execute if predicate matcha_item:offhand/seed_bundle run function matcha_item:offhand/seed_bundle
advancement revoke @s only matcha_item:trigger/seed_bundle