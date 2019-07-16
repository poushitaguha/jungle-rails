require 'rails_helper'

 RSpec.feature "User can login successfully and is taken to the homepage", type: :feature, js: true do

   # SETUP
  before :each do
    @user = User.create!(
        name:  "Test User",
        email: "testuser@xyz.com",
        password: "1234567",
        password_confirmation: "1234567"
      )
  end

  scenario "They enter their info, click submit, are logged in, and redirected to the home page" do
    # ACT
    visit '/login'

    fill_in 'email', with: @user.email
    fill_in 'password', with: @user.password

     # CLICK
    click_on 'Submit'

     # VERIFY
    expect(page).to have_content('Welcome, Test User')
    # expect(current_path).to eq('/')

     # DEBUG
    save_screenshot "user_login.png"
    # save_screenshot "user_login1.png"

  end
end 