require 'rails_helper'

feature "User can sign in and out" do
  context "user not signed in and on the homepage" do
    it "should see a 'sign in' link and a 'sign up' link" do
      visit('/')
      expect(page).to have_link('Sign in')
      expect(page).to have_link('Sign up')
    end

    it "should not see 'sign out' link" do
      visit('/')
      expect(page).not_to have_link('Sign out')
    end
  end

  context "user signed in on the homepage" do
    before do
      sign_up
    end

    it "should see 'sign out' link" do
      visit('/')
      expect(page).to have_link('Sign out')
    end

    it "should not see a 'sign in' link and a 'sign up' link" do
      visit('/')
      expect(page).not_to have_link('Sign in')
    end
    it "user can sign out" do
      sign_out
      expect(page).to have_content('Signed out successfully')
      sign_in
      expect(page).to have_content('Signed in successfully')
    end
  end

  context "user is able to save news preference" do
    scenario 'user selects right' do
      sign_up
      click_link 'Setting'
      select 'Right', from: 'Preference'
      fill_in 'Current password', with: 'shoobydooby'
      click_button 'Update'
      click_link 'Setting'
      within('div#preference') do
        expect(page).to have_content('right')
      end
    end
  end

  context "user must logged in to see stories" do
    scenario 'user can see stories if logged in' do
      sign_up
      visit '/stories'
      expect(current_path).to eq '/stories'
    end

    scenario 'user cannot see stories' do
      visit '/stories'
      expect(current_path).to eq '/users/sign_in'
    end
  end

end
