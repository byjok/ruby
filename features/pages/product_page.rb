class ProductPage

  def selectors
    @product_title = {css: "#productTitle"}
    @add_to_cart_button = {css: "#add-to-cart-button" }
    @go_to_cart_button = {css: "#nav-cart"}
  end

  def initialize(driver)
    @driver = driver
    selectors
  end

  def get_product_color
    product_title =  @driver.find_element(@product_title).text
    title_details = product_title.split(',')
    product_color = title_details[1]
    product_color.delete(' ')
    return product_color
  end

  def click_on_add_to_cart_button
    @driver.find_element(@add_to_cart_button).click
  end

  def go_to_cart
    @driver.find_element(@go_to_cart_button).click
  end

  def is_product_color?(colors)
    product_title =  @driver.find_element(@product_title).text
    title_details = product_title.split(',')
    product_color = title_details[1]
    product_color.strip!
    return product_color.include?(colors)
  end


end