require 'selenium-webdriver'

# create driver
chrome_driver = Selenium::WebDriver.for :chrome

chrome_driver.get('http://toolsqa.com/automation-practice-form/')

chrome_driver.find_element(:name, 'firstname').displayed?

chrome_driver.find_element(:name, 'firstname').send_keys('test')
chrome_driver.find_element(:name, 'lastname').send_keys('test lastname')

sleep 4
