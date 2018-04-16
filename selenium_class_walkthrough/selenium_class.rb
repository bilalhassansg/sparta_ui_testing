require 'selenium-webdriver'

class SeleniumQaToolsForm

  PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  GENDER = 'sex'
  DATEPICKER = 'datepicker'
  PROFESSION = 'profession'

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_first_name_field text # insert the first name
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
    sleep 4
  end

  def get_first_name_text # get the first name that has been inserted
    puts @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
  end

  def input_last_name_field text # insert the last name
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
    sleep 4
  end

  def get_last_name_text # get the name that has been inserted
    puts @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)['value']
  end

  def input_gender# insert the last name
    @chrome_driver.find_element(:id, 'sex-0').click
    sleep 4
  end

  def get_gender # get the name that has been inserted
    puts @chrome_driver.find_element(:name, GENDER)['value']
  end

  def input_years_of_experience # input the number of years of experience
    @chrome_driver.find_element(:id, 'exp-6').click
    sleep 4
  end

  def get_years_of_experience # get the number of years experience
    puts @chrome_driver.find_element(:id, 'exp-6')['value']
  end

  def input_date d # insert the first name
    @chrome_driver.find_element(:id, DATEPICKER).send_keys(d)
    sleep 4
  end

  def get_date # get the first name that has been inserted
    puts @chrome_driver.find_element(:id, DATEPICKER)['value']
  end

  def input_profession # insert the last name
    @chrome_driver.find_element(:id, 'profession-1').click
    sleep 4
  end

  def get_profession # get the name that has been inserted
    puts @chrome_driver.find_element(:id, 'profession-1')['value']
  end

  def input_photo
    @chrome_driver = driver.find_element(:id, 'photo').click
    sleep 5
  end


end

form = SeleniumQaToolsForm.new
form.visit_practice_form

# insert the name bill into the first name field
form.input_first_name_field('Bill')
# print the name just inserted into the console; but call it from their first name field
form.get_first_name_text

# insert the name bill into the last name field
form.input_last_name_field('Hassan')
# print the name just inserted into the console; but call it from their last name field
form.get_last_name_text

#select male from the radio button
form.input_gender
# print the name just inserted into the console; but call it from their last name field
form.get_gender

#select male from the radio button
form.input_years_of_experience
# print the name just inserted into the console; but call it from their last name field
form.get_years_of_experience

# insert a date into the date field
form.input_date('16/04/2018')
# print the name just inserted into the console; but call it from their last name field
form.get_date

# select a profession > Automation
form.input_profession
# get the profession selected
form.get_profession
