say <D> Triggered update function for cooked_porkchop
execute if predicate matcha_item:mainhand/cooked_porkchop run function matcha_item:mainhand/cooked_porkchop
execute if predicate matcha_item:offhand/cooked_porkchop run function matcha_item:offhand/cooked_porkchop
advancement revoke @s only matcha_item:trigger/cooked_porkchop