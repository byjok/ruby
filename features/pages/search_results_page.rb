class SearchResultsPage


  def selectors
    @first_result_link = {xpath: "//li[@id='result_0']//div[@class='a-row a-spacing-mini']//a"}
  end

  def initialize(driver)
    @driver = driver
    selectors
  end

  def click_first_search_result
    @driver.find_element(@first_result_link).click
  end
end