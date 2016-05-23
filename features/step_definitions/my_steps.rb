
When(/^I open "([^"]*)"$/) do |url|
  Page.open_url(url)
end

And(/^I search for route from "([^"]*)" to "([^"]*)"$/) do |from,to|
  SearchPage.search_from_to(from,to)
end

Then(/^prices of the tickets are displayed and sorted ascending$/) do
  prices_list = nil
  prices_list = SearchPage.get_train_prices
  expect(prices_list).to eq prices_list.sort
end