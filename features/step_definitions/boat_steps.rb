When /^I open boats page$/ do
	  visit boats_path
end

 When /^I click on the link "([^"]*)"$/ do |name|
 	click_link name
 end
 
 Then /^I fill "([^"]*)" with "([^"]*)"$/ do |label,name|
 	fill_in label, :with => name
end

 Then /^I click the button "([^"]*)"$/ do |name|
 	 click_button name
 end
 
Then /^I should see "([^"]*)"$/ do |name|
	page.should have_content(name)
end