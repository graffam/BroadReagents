require 'rails_helper.rb'
# As a user I want to be able to place a new order
# After a new order is I should be redirected to the order itself
# The order should display information such as user who placed it etc...
#  [X] User can visit the new order page and be shown a list of machines
#  [] User can place a new order
#  [] User is redirected to the order they just placed

feature "User adds a new order" do

  scenario "user visits the ordering page" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    click_on "New Order"
    click_on "HS2500"
    expect(page).to have_content()
  end

  scenario "user places a new order" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    click_on "New Order"
    click_on "HS2500"
  end



end
