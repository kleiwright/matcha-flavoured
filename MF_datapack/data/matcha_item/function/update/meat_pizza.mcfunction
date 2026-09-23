say <D> Triggered update function for meat_pizza
execute if predicate matcha_item:mainhand/meat_pizza run function matcha_item:mainhand/meat_pizza
execute if predicate matcha_item:offhand/meat_pizza run function matcha_item:offhand/meat_pizza
advancement revoke @s only matcha_item:trigger/meat_pizza