Given /^I want to play Battleship$/ do
end

When /^I go to the homepage$/ do
  visit root_path
end

Then /^I should see the grid to arrange my ships on it$/ do
  page.should have_selector('#player_grid')
end
