class SearchPage
  def self.search_from_to(from, to)
    from_input_field.send_keys(from)
    to_input_field.send_keys(to)

    perform_search
    perform_search
  end

  def self.perform_search
    search_button.click()
  end

  def self.get_train_prices
    train_price_list.map{|element|
      element.text
    }
  end

  private
  def self.from_input_field
    DriverFactory.instance.find_element(:id, 'from_filter')
  end

  def self.to_input_field
    DriverFactory.instance.find_element(:id, 'to_filter')
  end

  def self.search_button
    DriverFactory.instance.find_element(:id, 'search-form__submit-btn')
  end

  def self.train_tab
     DriverFactory.instance.find_element(:id, 'results-train')
  end

  def self.train_price_list
    train_tab.find_elements(:class, 'price-cell')
  end
end