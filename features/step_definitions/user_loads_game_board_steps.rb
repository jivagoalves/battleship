Given /^I want to play Battleship$/ do
end

When /^I go to the homepage$/ do
  visit root_path
end

Then /^I should see the player grid to arrange my ships$/ do
  page.should have_selector('#player_grid')
end

Then /^the player grid should have dimensions (\d+) por (\d+)$/ do |lines, columns|
  page.should have_selector('#player_grid .square', :count => lines.to_i * columns.to_i)
end

Then /^the squares should be draggable$/ do
  all('#player_grid .square').each do |square|
    square['draggable'].should == "true"
  end
end

Then /^I should see (\d+) draggable ships$/ do |count|
  page.should have_selector('ul.ships li.ship[draggable=true]', :count => count.to_i)
end
