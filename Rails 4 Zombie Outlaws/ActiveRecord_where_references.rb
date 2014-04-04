Weapon.includes(:zombies)
.where("zombies.name = 'Ash'").references(:zombies)
