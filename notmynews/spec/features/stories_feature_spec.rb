require 'rails_helper'

describe 'stories features' do
	scenario 'stories listed on the index page', js: true do
		visit '/stories'
		expect(page).not_to have_content('hello')
	end
end
