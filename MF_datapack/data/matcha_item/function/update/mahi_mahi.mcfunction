say <D> Triggered update function for mahi_mahi
execute if predicate matcha_item:mainhand/mahi_mahi run function matcha_item:mainhand/mahi_mahi
execute if predicate matcha_item:offhand/mahi_mahi run function matcha_item:offhand/mahi_mahi
advancement revoke @s only matcha_item:trigger/mahi_mahi