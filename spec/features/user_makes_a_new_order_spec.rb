require 'rails_helper.rb'
# As a user I want to be able to place a new order
# After a new order is I should be redirected to the order itself
# The order should display information such as user who placed it etc...
#  [X] User can visit the new order page and be shown a list of machines
#  [X] User can place a new order
#  [X] User is redirected to the order they just placed
#  [X] User must be logged in to create an order
#  [] An error is shown if none of the kits are filled in, or needed by

feature "User adds a new order" do
  context "user is signed in" do
    before(:each) do
      @user = FactoryGirl.create(:user)
    end

    scenario "user visits the ordering page" do
      visit new_user_session_path
      fill_in "Email", with: @user.email
      fill_in "Password", with: @user.password
      click_on "Log in"
      click_on "New Order"
      click_on "HS2500"
      expect(page).to have_content ("58c")
    end

    scenario "user places a order and is directed to the order's detail page" do
      visit new_user_session_path
      fill_in "Email", with: @user.email
      fill_in "Password", with: @user.password
      click_on "Log in"
      click_on "New Order"
      click_on "HS2500"
      fill_in "order_kit_orders_attributes_0_amount", with: 1
      fill_in "order_comment", with: "For last weeks failed samples"
      fill_in "order_needed_by", with: "As soon as possible"
      click_on "Place Order"
      expect(page).to have_content("For last weeks failed samples")
    end
  end

  context "user is not signed in" do

    scenario "User tries to place order" do
      visit root_path
      click_on "New Order"
      expect(page).to have_content("sign in or sign up before continuing")
    end


  end
end
