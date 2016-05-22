class DriverFactory
  @@driver = nil

  def self.configure
      @@driver = Selenium::WebDriver.for :firefox
  end

  def self.instance
    if (@@driver)
      @@driver
    else
      configure
    end

  end
end