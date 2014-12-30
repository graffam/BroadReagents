require 'rails_helper'
feature "display all of the orders" do
  # As a user, I want to be able to view all the current orders
  # So that I may see what kits I need to prepare
  # Acceptance Criteria:
  # [] All of the current orders need to be displayed
  # [] Be able to order by due date, date submitted, machine type, both
  #     both forward and reverse

  scenario "User views all of the orders" do
    order = FactoryGirl.create(:order)
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    visit all_path
    expect(page).to have_content("10")
  end



end
