require "rails_helper"

RSpec.feature "Users can create new projects" do

  before do
    visit "/"
    click_link "New Project"
  end

  scenario "with valid attributes" do
    fill_in "name", with: "Sublime Text 3"
    #fill_in "description", with: "sublime don get replacement free of sharge!!"
    click_button "Create Project"

    project = Project.find_by(name: "Sublime Text 3")
    expect(page.current_url).to eq project_url(project)
    title = "Sublime Text 3-Projects-Ticketee"

    expect(page).to have_content "Project has been created."
    #expect(page).to have_content "Name can't be blank"



    expect(page).to have_title title
  end
end
