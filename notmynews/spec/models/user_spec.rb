require 'rails_helper'

RSpec.describe User, type: :model do
  context 'User should have preference saved' do
    scenario 'User preference equal to left' do
      user = User.create(email: "a@test.com", password: '123123123', password_confirmation: '123123123', preference: 'left')
      expect(user.preference).to eq 'left'
    end
  end
end
