require 'page-object'

class CartPage

def selectors
  @product_title = {css: ".a-size-medium.sc-product-title.a-text-bold"}
end

def initialize(driver)
  @driver = driver
  selectors
end

def iphone_present?
  prod_title = @driver.find_element(@product_title).text
  return prod_title.include?('Apple iPhone 6')
end

end