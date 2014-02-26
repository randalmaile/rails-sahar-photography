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
    visit "/workorders/new"
    fill_in_admin_workorder_form
    expect(page).to have_content "Dashboard"
    expect(page).to have_content "444-444-4444"
  end
  
  def go_to_photoshoot_request_form
    visit "/contact/photoshoot"
  end

  def fill_in_photoshoot_request_form
   fill_in 'Name', with: 'Randal Maile'
   fill_in 'Email', with: 'rmaile@email.com'
   fill_in 'Phone', with: '555-555-5555'
   select "13", from: "workorder_eventdate_3i"
   # select date????
   select "Wedding", from: "Jobtype"
   fill_in "Description", with: "I would like to have a photoshoot"
   fill_in "Comments", with: "My comments"
   click_button "Submit"
  end

  def fill_in_admin_workorder_form
    fill_in "Name", with: "Randal Maile"
    fill_in "Email", with: "email"
    fill_in "Phone", with: "444-444-4444"
    fill_in "Address", with: "123 AVC st"
    fill_in "City", with: "new york"
    fill_in "State", with: "ny"
    fill_in "Zip", with: "92334"
    fill_in "Country", with: "usa"
    select "Wedding", from: "Job Type"
    fill_in "Description", with: "asdfasdf asdf asdf asdf asdf asdf"
    # select date?
    fill_in "Quotedprice", with: "33.44"
    select "Quoted price", from: "Order Status"
    fill_in "Comments", with: "sdf sd fas dfa sdf"
    click_button "Create"
  end
end