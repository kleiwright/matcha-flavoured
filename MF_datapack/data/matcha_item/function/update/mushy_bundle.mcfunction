say <D> Triggered update function for mushy_bundle
execute if predicate matcha_item:mainhand/mushy_bundle run function matcha_item:mainhand/mushy_bundle
execute if predicate matcha_item:offhand/mushy_bundle run function matcha_item:offhand/mushy_bundle
advancement revoke @s only matcha_item:trigger/mushy_bundle