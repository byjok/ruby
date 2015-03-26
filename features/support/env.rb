require 'rubygems'
require 'selenium-webdriver'
require 'rspec'

def instantiate_web_driver
  log "Instantiating WebDriver"


    $driver = Selenium::WebDriver.for :firefox
    $driver.manage.timeouts.implicit_wait = 10
    $driver.manage().window().maximize()
end
