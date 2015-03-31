class Pages
  require_relative 'driver_factory'
  require './features/pages/start_page'
  require './features/pages/search_results_page'
  require './features/pages/product_page'
  require './features/pages/cart_page'
  include DriverFactory


  driver = Selenium::WebDriver.for :firefox
  $start_page = StartPage.new(driver)
  $product_page = ProductPage.new(driver)
  $search_results_page = SearchResultsPage.new(driver)
  $cart_page = CartPage.new(driver)

end