module DriverFactory

  def get_web_driver
    @driver ||= instantiate_web_driver
  end

end