Given(/^I am on Google\.com$/) do
  visit 'https://www.google.com/'
end

When(/^I search for "([^"]*)"$/) do |arg1|
  find('[title=Search]').set(arg1)
  find('button[value=Search]').click
  wait_for { find('#search') }.not_to be nil
end

Then(/^findly\.com is the first result$/) do
  expect(first('h3.r a')[:href]).to eq 'http://findly.com/'
end
