# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Dontnumbers' do
  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @vars = {}
  end
  it 'dontnumbers' do
    @driver.get('http://localhost:3001/')
    @driver.find_element(:id, 'arr').send_keys('sdf')
    @driver.find_element(:id, 'arr').send_keys(:enter)
    @driver.find_element(:css, 'body').click
    sleep 3
    expect(@driver.find_element(:css, 'body').text).to eq('Invalid request parameters(arr = don\'t numbers)')
  end
end
