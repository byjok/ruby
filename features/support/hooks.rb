require_relative 'driver_factory'
include DriverFactory

After do
  driver = DriverFactory.get_web_driver
  driver.quit
end
