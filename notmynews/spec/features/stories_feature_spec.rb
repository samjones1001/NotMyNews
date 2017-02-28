require 'rails_helper'

describe 'stories features' do
	scenario 'stories listed on the index page' do
		#User.create(email: 'bob@example.com', password: '123123123', password: '123123123')
		visit '/stories'
		sleep(15)
		expect(page).to have_content('Super')
	end
end