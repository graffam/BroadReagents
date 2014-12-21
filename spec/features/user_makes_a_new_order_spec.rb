require 'rails_helper.rb'

feature "User adds a new order" do

  scenario "user visits the ordering page" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Sign In"
    click_on "New Order"
    expect(page).to have_content "Place Order"
  end

  # scenario "user places an order" do
  #   user = FactoryGirl.new(:user)
  #   visit new_user_session_path
  #   fill_in "Email", with: user.email
  #   fill_in "Password", with: user.password
  #   click_on "Log In"
  #   visit new_order_path
  # end



end
