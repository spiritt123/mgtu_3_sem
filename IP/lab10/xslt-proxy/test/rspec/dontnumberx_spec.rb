# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Dontnumberx' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @vars = {}
  end
  it 'dontnumberx' do
    @driver.get('http://localhost:3001/')
    @driver.find_element(:css, '.form-check:nth-child(3) > .form-check-label').click
    @driver.find_element(:id, 'arr').click
    @driver.find_element(:id, 'arr').send_keys('sdf')
    @driver.find_element(:name, 'commit').click
    sleep 1
    expect(@driver.find_element(:xpath, '//message').text).to eq('Invalid request parameters(arr = don\'t numbers)')
  end
end
