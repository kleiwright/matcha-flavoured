say <D> Triggered update function for anglers_almanac
execute if predicate matcha_item:mainhand/anglers_almanac run function matcha_item:mainhand/anglers_almanac
execute if predicate matcha_item:offhand/anglers_almanac run function matcha_item:offhand/anglers_almanac
advancement revoke @s only matcha_item:trigger/anglers_almanac