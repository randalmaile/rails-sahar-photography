require 'spec_helper'
feature "work orders" do 
  scenario "should accept all user's data from the contact/photoshoot form" do 
    go_to_photoshoot_request_form
    expect(page).to have_content "Request a photoshoot"
    fill_in_photoshoot_request_form
    expect(page).to have_content "Your order has been confirmed"
  end

  scenario "should appear in the admin dashboard" do
    go_to_photoshoot_request_form
    expect(page).to have_content "Request a photoshoot"
    fill_in_photoshoot_request_form
    expect(page).to have_content "Your order has been confirmed"
    visit "/admin/index"
    page.should have_content("rmaile@email.com")
  end

  scenario "should accept all admins data added to a new workorder form" do

    
  end

  scenario "should accept all admin's data added to an existing workorder" do

  end


  def go_to_photoshoot_request_form
    visit "/contact/photoshoot"
    # click_link "Contact"
    # click_link "Photoshoot"
  end

  def fill_in_photoshoot_request_form
   fill_in 'Name', with: 'Randal Maile'
   fill_in 'Email', with: 'rmaile@email.com'
   fill_in 'Phone', with: '555-555-5555'
   fill_in 'Date', with: '1/22/2014'
   select "Wedding", from: "Jobtype"
   fill_in "Description", with: "I would like to have a photoshoot"
   fill_in "Comments", with: "My comments"
   click_button "Submit"
  end
end