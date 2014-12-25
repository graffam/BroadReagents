require 'rails_helper'
feature "user signs up for an account" do
  # As a broad employee
  # I want to sign up for the reagent ordering application
  # So that I can use all of its awesome features.
  # [X] There is a link to 'Sign Up' on the homepage.
  # [X] If I fill in my first name, last name, email, password, and password confirmation correctly, I am greeted with a confirmation message that my account has been created.
  # [X] If the password and password confirmation fields do not match, I am given an error message.
  # [X] If my email already exists in the database, I am given a message that tells me I have already registered.
  # [X] If my email is not formatted correctly, I am given an error message.


  scenario "user provides valid information" do
    visit root_path
    click_on "Sign Up"
    fill_in "First Name", with: "Alex"
    fill_in "Last Name", with: "Graff"
    fill_in "Email", with: "graffam877@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
    expect(page).to have_content "Welcome! You have signed up successfully."
    expect(page).to_not have_link "Sign Up"
    expect(page).to have_link "Sign out"
  end

  scenario "password fields to not match" do
    visit root_path
    click_on "Sign Up"
    fill_in "First Name", with: "Alex"
    fill_in "Last Name", with: "Graff"
    fill_in "Email", with: "graffam87@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "passwsdord"
    click_on "Sign up"
    expect(page).to have_content "Password confirmation doesn't match"
  end

  scenario "Email already exists in the database" do
    existing_user = User.create(
      first_name: "Alex",
      last_name: "Graff",
      email:"graffam877@gmail.com",
      password: "password")
    visit root_path
    click_on "Sign Up"
    fill_in "First Name", with: "Ted"
    fill_in "Last Name", with: "Graff"
    fill_in "Email", with: "graffam877@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
    expect(page).to have_content "Email has already been taken"
  end

  scenario "Email is not formatted correctly" do
    visit root_path
    click_on "Sign Up"
    fill_in "First Name", with: "Alex"
    fill_in "Last Name", with: "Graff"
    fill_in "Email", with: "graffam87gmail"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
    expect(page).to have_content "Email is invalid"
  end
end
