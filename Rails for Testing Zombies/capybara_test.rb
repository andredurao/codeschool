require 'capybara/rails'

class ZombiesTest < ActionDispatch::IntegrationTest
	include Capybara::DSL

	def teardown
		Capybara.reset_sessions!
		Capybara.use_default_browser
	end


	click_link 'Homepage' # text or element id
	click_button 'Save'
	click_on 'Link or Button text'

	fill_in 'First Name', with: John # form label, element name or id
	choose 'A Radio button'
	check 'A checkbox'
	uncheck 'A checkbox'
	attach_file 'Image', '/path/to/image.jpg'
	select 'Option', form: 'Select Box'
	has_content? 'Ash'
	has_no_content? 'Ash zombie'
	has_selector? '#zombie_1 h1'
	has_selector? '#zombie_11 h1', text: 'Bob'
	has_no_selector? '...'
	has_selector? '.zombie', count: 5, visible: true


	# current_path
	# current_url



end
