require 'rails_helper'
feature "user signs up for an account" do
  # As a broad employee
  # I want to sign up for the reagent ordering application
  # So that I can use all of its awesome features.
  # [ ] There is a link to 'Sign Up' on the homepage.
  # [ ] If I fill in my first name, last name, email, password, and password confirmation correctly, I am greeted with a confirmation message that my account has been created.
  # [ ] If the password and password confirmation fields do not match, I am given an error message.
  # [ ] If my email already exists in the database, I am given a message that tells me I have already registered.
  # [ ] If my email is not formatted correctly, I am given an error message.


  scenario "user provides valid information" do
    visit root_path
    click_on "Sign Up"
    fill_in "First Name", with: "Alex"
    fill_in "Last Name", with: "Graff"
    fill_in "Email", with: "graffam87@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"

    expect(page).to have_message "Welcome! Your account has been created."
  end








end
