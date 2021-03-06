require "rails_helper.rb"
# As a user I want to be able to view all of the orders
# so that I can prioritize what work I need to do
#  [X] User see all of the current orders
#  [] User can select an order and see its details
#  [] User can sort all of the orders by status, needed by and machine type

context "There are orders" do
  order = FactoryGirl.create(:order)

  scenario "User visits the index page and sees all the orders" do
    visit all_orders_path

    save_and_open_page

    expect(page).to have_content("This is a test")
  end
end
