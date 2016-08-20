require "selenium-webdriver"
require 'rails_helper'




RSpec.describe "Selenium Integartion test" do


  describe "test" do
    it "should return true" do

      expect(true).to eq(true)
    end
  end

  describe "test" do
    it "should return true" do
      @driver = Selenium::WebDriver.for(
          :remote,
          url: 'http://hub:4444/wd/hub',
          desired_capabilities: :firefox) # you can also use :chrome, :safari, etc.

          @driver.get 'http://the-internet.herokuapp.com'
          expect(@driver.title).to eq('The Internet')

          @driver.quit
    end
  end

end
