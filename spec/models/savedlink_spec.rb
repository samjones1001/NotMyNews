require 'rails_helper'

RSpec.describe SavedLink, type: :model do
  context 'Saved link created successfully' do
    scenario 'linked to user' do
      user = User.create(email: "a@test.com", password: '123123123', password_confirmation: '123123123', preference: 'left')
     	saved = SavedLink.create(title: "Hello", subtitle: "Here comes hello world!", url: "www.google.com", imageurl:"http://i.imgur.com/HGXThAN.jpg", user_id: user.id)
     	expect(saved.user_id).to eq user.id
     	expect(user.saved_links.length).to eq 1
    end
  end
end
