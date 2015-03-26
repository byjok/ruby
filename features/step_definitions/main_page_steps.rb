


Given(/^I am on the main page$/) do
  
  start_page = StartPage.new(driver)
  start_page.navigate
end

When(/^I enter search term as (.*)$/) do |searchTerm|
  main_page.fill_search_field searchTerm
end

And(/^I click on Search button$/) do
  main_page.click_on_search_btn
end

And(/^I Select first result$/) do
  search_results_page.click_first_search_result
end

Then(/I should see (.*) of phone$/) do |colors|
  expect(product_page.get_product_title).to include(colors)
end