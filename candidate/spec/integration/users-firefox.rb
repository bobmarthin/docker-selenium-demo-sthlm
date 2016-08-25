require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "User" do

  before(:each) do
    @driver = Selenium::WebDriver.for(
        :remote,
        url: 'http://hub:4444/wd/hub',
        desired_capabilities: :firefox)
  end

  after(:each) do
    @driver.quit
  end

  it "test_user_add" do

    @driver.get("http://web:3000/users")
    # expect(@driver.find_element(:link, "New User").displayed).to eq(true)
    @driver.find_element(:link, "New User").click
    @driver.find_element(:id, "user_name").clear
    @driver.find_element(:id, "user_name").send_keys "maxim1"
    @driver.find_element(:id, "user_email").clear
    @driver.find_element(:id, "user_email").send_keys "max@max.com"
    @driver.find_element(:name, "commit").click
  end
end
