say <D> Triggered update function for anchovy
execute if predicate matcha_item:mainhand/anchovy run function matcha_item:mainhand/anchovy
execute if predicate matcha_item:offhand/anchovy run function matcha_item:offhand/anchovy
advancement revoke @s only matcha_item:trigger/anchovy