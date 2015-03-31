require_relative 'env'
module DriverFactory

  def get_web_driver
    @driver ||= initialize_driver
  end



end