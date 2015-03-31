require 'page-object'

class StartPage
 # include PageObject


  def selectors
    @search_field  = {id:'twotabsearchtextbox'}
    @search_button = {xpath: "//input[@value='Go']"}
  end

  def initialize(driver)
    @driver = driver
    selectors
  end

  def navigate
    @driver.navigate.refresh
    @driver.get("http://www.amazon.com")
    sleep 2
  end

  def fill_search_field(search_term)
    @driver.find_element(@search_field).send_keys(search_term)
  end

  def click_on_search_btn
    @driver.find_element(@search_button).click()
  end

end