require 'rails_helper'
feature "signs into existing account" do
  # As a broad employee
  # I want to sign in to view the reagent ordering application
  # So that I can use all of its awesome features.
  # [X] The link brings me to the proper sign in page.
  # [X] If user fills in information correctly, signs them in and brings them to the orders index page.
  # [X] if password is incorrect, display error message.
  # [X] If no use is found with email specified, display no account associated with email.
  # [X] If any field is left blank, display error messages.

  scenario "user visits the sign in page" do
    visit root_path
    click_on "Sign In"
    expect(page).to have_content("Log in")
  end

  scenario "user successfully logs in" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    expect(page).to have_content("Signed in successfully.")
  end
  scenario "user enters password incorrectly" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: "dfasdfa"
    click_on "Log in"
    expect(page).to have_content("Invalid email or password")
  end

  scenario "user enters invalid email" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Email", with: "fdasdf"
    fill_in "Password", with: user.password
    click_on "Log in"
    expect(page).to have_content("Invalid email or password")
  end
  scenario "leaves fields blank" do
    visit new_user_session_path
    click_on "Log in"
    expect(page).to have_content("Invalid email or password")
  end


end
