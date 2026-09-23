say <D> Triggered update function for canned_golden_apples
execute if predicate matcha_item:mainhand/canned_golden_apples run function matcha_item:mainhand/canned_golden_apples
execute if predicate matcha_item:offhand/canned_golden_apples run function matcha_item:offhand/canned_golden_apples
advancement revoke @s only matcha_item:trigger/canned_golden_apples