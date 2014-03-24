new_options = {user: 'codeschool', lang: 'fr', password: 'dunno'}

new_options.except(:password)

# throws an exception if the hash contains any keys besides those listed here
new_options.assert_valid_keys(:user, :lang)