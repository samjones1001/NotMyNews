require 'rails_helper'

feature "User has saved links" do
	context "user can view saved links" do
		scenario "page returned save links" do
			user = User.create(email: "a@testtest.com", password: "123123123", password_confirmation: "123123123", preference: "left")
			SavedLink.create(title: "Make an app", subtitle: "Hello world", url: "http://www.google.com", imageurl: "http://i.imgur.com/HGXThAN.jpg", user_id: user.id)
			visit '/'
			click_link 'Sign in'
			fill_in "Email", with: "a@testtest.com"
			fill_in "Password", with: "123123123"
			click_button 'Sign in'
			visit '/savedlinks'
			expect(page).to have_content("Hello world")
		end

		# scenario "page returned save links - feature", js: true do
		# 	user = User.create(email: "a@testtest.com", password: "123123123", password_confirmation: "123123123", preference: "left")
		# 	visit '/'
		# 	click_link 'Sign in'
		# 	fill_in "Email", with: "a@testtest.com"
		# 	fill_in "Password", with: "123123123"
		# 	click_button 'Sign in'
		# 	visit '/stories'
		# 	click_button 'Save'
		# 	expect(user.saved_links.length).to eq 1
		# end
	end

	context "user can delete saved links" do
		scenario "page returned without deleted links" do
			user = User.create(email: "a@testtest.com", password: "123123123", password_confirmation: "123123123", preference: "left")
			SavedLink.create(title: "Make an app", subtitle: "Hello world", url: "http://www.google.com", imageurl: "http://i.imgur.com/HGXThAN.jpg", user_id: user.id)
			visit '/'
			click_link 'Sign in'
			fill_in "Email", with: "a@testtest.com"
			fill_in "Password", with: "123123123"
			click_button 'Sign in'
			visit '/savedlinks'
			click_link('Delete')
			expect(page).to have_content("No saved links")
		end
	end

end