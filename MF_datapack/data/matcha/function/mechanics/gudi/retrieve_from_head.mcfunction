# Retrieve gudi that is equipped in entity's head slot
# This can be done to add compatibility for entities that cannot usually be interacted with
item replace entity @s weapon.mainhand from entity @n[type=#matcha:gudi_summons, predicate=matcha:mob_checks/equipped_gudi] armor.head
data remove entity @n[type=#matcha:gudi_summons, predicate=matcha:mob_checks/equipped_gudi] equipment.head