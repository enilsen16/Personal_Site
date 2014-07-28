require "test_helper"

feature "List all projects" do
  scenario "create a new project" do
    visit root_path
    assert page.has_content?
    first(:link, "Projects").click
    click_on "New Project"
    fill_in "Title", with: "test"
    fill_in "Description", with: "A test project"
    fill_in "Technologies used", with: "Django"
    click_on "Create Project"
    page.text.must_include "Project has been created"
    page.text.must_include "test"
  end
  scenario "only admin can see the new page" do
    visit root_path
    assert page.has_content?
    first.(:link, "Projects").click
    page.text.wont_include "New Project"
  end
end
