require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require_relative './pages'

def instantiate_web_driver

    $driver = Selenium::WebDriver.for :firefox
    $driver.manage.timeouts.implicit_wait = 10
    $driver.manage().window().maximize()
end
