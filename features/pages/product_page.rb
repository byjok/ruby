class ProductPage
  def selectors
    @product_title = {xpath: "//li[@id='result_0']//div[@class='a-row a-spacing-mini']//a"}
  end

  def initialize(driver)
    @driver = driver
    selectors
  end

  def get_product_title
    product_title =  @driver.find_element(@product_title).get_text()
    return product_title
  end
end