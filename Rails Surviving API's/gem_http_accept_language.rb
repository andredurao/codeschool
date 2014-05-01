# => gem 'http_accept_language'

class ApplicationController < ActionController
	protect_from_forgey with: :exception
	before_action :set_locale

	protected

	def set_locale 
		locales = I18n.available_locales
		I18n.locale = http_accept_language.compatible_language_from(locales)
	end
end