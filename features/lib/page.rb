require 'selenium-webdriver'

class Page

  def self.open_url(url)
    DriverFactory.instance.get(url)
  end
end


