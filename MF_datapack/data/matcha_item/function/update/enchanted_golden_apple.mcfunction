say <D> Triggered update function for enchanted_golden_apple
execute if predicate matcha_item:mainhand/enchanted_golden_apple run function matcha_item:mainhand/enchanted_golden_apple
execute if predicate matcha_item:offhand/enchanted_golden_apple run function matcha_item:offhand/enchanted_golden_apple
advancement revoke @s only matcha_item:trigger/enchanted_golden_apple