def sign_up(email: 'john@example.com', password: 'shoobydooby', preference: 'left')
  visit ('/')
  click_link 'Sign up'
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  fill_in 'Password confirmation', with: password
  select preference, from: "Preference"
  click_button 'Sign up'
end

def sign_in(email: 'john@example.com', password: 'shoobydooby')
  visit '/'
  click_link 'Sign in'
  fill_in 'user_email', with: email
  fill_in 'user_password', with: password
  click_button 'Sign in'
end

def sign_out
  visit '/'
  click_link 'Sign out'
end
