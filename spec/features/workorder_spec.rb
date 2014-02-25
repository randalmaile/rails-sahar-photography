require 'spec_helper'
Capybara.default_driver = :selenium
feature "work orders", :js => true do 
  scenario "should accept all user's data from the contact/photoshoot form" do 
    go_to_work_order_form
    expect(page).to have_content "Request a photoshoot"
    fill_in_work_order_form
    expect(page).to have_content "Your order has been confirmed"
  end

  scenario "should appear in the admin dashboard" do
    go_to_work_order_form
    fill_in_work_order_form
    click_link "Admin"
    click_link "Dashboard"
    page.should have_content("user@email.com")
  end

  scenario "should accept all admins data added to a new workorder form" do
    
    
  end

  scenario "should accept all admin's data added to an existing workorder" do
    visit "/admin/index"
    cli
  end


  def go_to_work_order_form
    visit root_path
    click_link "Contact"
    click_link "Photoshoot"
  end

  def fill_in_work_order_form
   fill_in 'Name', with: 'Randal Maile'
   fill_in 'Email', with: 'user@email.com'
   fill_in 'Phone', with: '555-555-5555'
   fill_in 'Date', with: '1/22/2014'
   select "Wedding", from: "Jobtype"
   fill_in "Description", with: "I would like to have a photoshoot"
   fill_in "Comments", with: "My comments"
   click_button "Submit"
  end
end