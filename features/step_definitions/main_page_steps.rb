require_relative '../support/pages'


Given(/^I am on the main page$/) do

    $start_page.navigate
end

When(/^I enter search term as (.*)$/) do |searchTerm|
   $start_page.fill_search_field searchTerm
end

And(/^I click on Search button$/) do
  $start_page.click_on_search_btn
end

And(/^I Select first result$/) do
  $search_results_page.click_first_search_result
end

Then(/I should see (.*) of phone$/) do |colors|
  expect($product_page.get_product_color).to include(colors)
end

Given(/^I found (.*) and selected it$/) do |searchTerm|
  step "I am on the main page"
  step "I enter search term as #{searchTerm}"
  step "I click on Search button"
  step "I Select first result"
end

When(/^I click add to cart button$/) do
  $product_page.click_on_add_to_cart_button
end

And(/^I go to cart page$/) do
  $product_page.go_to_cart
end

Then(/^I should see Iphone in cart$/) do
  expect($cart_page.iphone_present?).to be true
end