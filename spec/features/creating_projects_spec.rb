require "rails_helper"

RSpec.feature "Users can create new projects" do
  scenario "with valid attributes" do
    visit "/"
    click_link "New Project"

    fill_in "name", with: "Atom"
    fill_in "description", with: "sublime don get replacement free of sharge!!"
    click_button "Create Project"

    expect(page).to have_content "Project has been created."

    title = "Atom editor - Projects - Ticketee "
    expect(page).to have_title title
  end
end
