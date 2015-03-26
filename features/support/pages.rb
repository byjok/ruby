class Pages
  require_relative 'driver_factory'
  include DriverFactory
  attr_reader :start_page, :search_results_page, :product_page

  def initialize
    driver = DriverFactory.get_web_driver
    @start_page = StartPage.new(driver)
    @search_results_page = SearchResultsPage.new(driver)
    @product_page = ProductPage.new(driver)
  end

  def instantiate_pages
    $pages = Pages.new
  end

  def start_page; $pages.start_page end
  def search_results_page; $pages.search_results_page end
  def product_page; $pages.product_page end

end