options = {user: 'codeschool', lang: 'fr'}
new_options = {user: 'codeschool', lang: 'fr', password: 'dunno'}

options.diff(new_options)

options.stringify_keys # turn keys into strings