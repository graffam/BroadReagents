require 'rails_helper'
feature "user signs out of account" do

  scenario "user signs out of account" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    click_on "Sign Out"
    expect(page).to have_content "Signed out successfully."
  end
end
