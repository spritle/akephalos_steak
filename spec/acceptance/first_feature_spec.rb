require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "First Feature", %q{
  In order to ...
  As a ...
  I want to ...
} do

  scenario "Scenario name", :js => true do
    visit "/posts"
    page.should have_css("#more", :text => '')
    click_link "more"
    page.should have_css("#more", :text => 'this is the content for more')
  end
end
