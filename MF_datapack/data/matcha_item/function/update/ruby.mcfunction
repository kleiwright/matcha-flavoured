say <D> Triggered update function for ruby
execute if predicate matcha_item:mainhand/ruby run function matcha_item:mainhand/ruby
execute if predicate matcha_item:offhand/ruby run function matcha_item:offhand/ruby
advancement revoke @s only matcha_item:trigger/ruby