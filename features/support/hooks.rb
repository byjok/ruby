require_relative 'driver_factory'
include DriverFactory

at_exit do
  driver = DriverFactory.get_web_driver
  driver.quit
end
