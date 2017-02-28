require 'rails_helper'

describe 'stories features' do
	scenario 'stories listed on the index page', js: true do
		#User.create(email: 'bob@example.com', password: '123123123', password: '123123123')
		visit '/stories'
		expect(page).to have_content('Super')
	end
end