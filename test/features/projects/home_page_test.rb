require "test_helper"

feature "List all projects" do
  scenario "create a new project" do
    visit root_path
    assert page.has_content?
  end
end
