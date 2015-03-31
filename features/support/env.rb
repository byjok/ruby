require 'selenium-webdriver'

def initialize_driver
  $driver = Selenium::WebDriver.for :firefox
  $driver.manage.timeouts.implicit_wait = 10
  $driver.manage().window().maximize()
  $driver
end