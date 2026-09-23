say <D> Triggered update function for brush
execute if predicate matcha_item:mainhand/brush run function matcha_item:mainhand/brush
execute if predicate matcha_item:offhand/brush run function matcha_item:offhand/brush
advancement revoke @s only matcha_item:trigger/brush