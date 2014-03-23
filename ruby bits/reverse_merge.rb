options = {
	lang: 'fr',
	user: 'codeschool'
}

defaults = {
	lang: 'en',
	country: 'us'
}

options.reverse_merge(defaults)
# {lang: 'fr', user: 'codeschool', country: 'us'}