require 'spec_helper'

describe 'Testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
    @wait = Selenium::WebDriver::Wait.new(timeout: 10)
  end

  context 'Positive paths for the registration form and register' do

    it 'should land on the registration page' do
      expect(@driver.current_url). to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.first_name_field_displayed
      @driver.set_first_name_field('Bilal')
      expect(@driver.get_first_name_field_value).to eq 'Bilal'
    end

    it 'should accpet a last name' do
      @driver.last_name_field_displayed
      @driver.set_last_name_field('Hassan')
      expect(@driver.get_last_name_field_value).to eq 'Hassan'
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      @driver.select_marital_option('Single')
      @driver.select_marital_option('Married')
      @driver.select_marital_option('Divorced')
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      @driver.select_hobby_option('Dance')
      @driver.select_hobby_option('Reading')
      @driver.select_hobby_option('Cricket')
    end

    it 'should have a country default of Afghanistan' do
      # @driver.country_dropdown_list_select('Afghanistan')
      expect(@driver.get_selected_country).to eq 'Afghanistan'
    end

    it 'accept a new DOB' do
      @driver.dob_month_list_select('10')
      @driver.dob_day_list_select('21')
      @driver.dob_year_list_select('1994')
    end

    it 'should accept a new country value' do
      @driver.country_dropdown_list_select('Australia')
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field('07898789878')
      expect(@driver.get_phone_number_field_value.length).to eq 11
      expect(@driver.get_phone_number_field_value).to eq '07898789878'
    end

    it 'should accept a username' do
      @driver.set_user_name_field('username5username')
      expect(@driver.get_user_name_field_value).to eq 'username5username'
    end

    it 'should accept a email' do
      @driver.set_email_field('username5username@test.com')
      expect(@driver.get_email_field_value).to eq 'username5username@test.com'
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field('Here is a short description of me.')
      expect(@driver.get_about_yourself_value).to eq 'Here is a short description of me.'
    end

    it 'should accept a password' do
      @driver.set_password_field('password2')
      expect(@driver.get_password_value).to eq 'password2'
    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field('password2')
      expect(@driver.get_confirmation_password_value).to eq 'password2'
      expect(@driver.get_confirmation_password_value).to eq @driver.get_password_value
    end

    it 'should register successfully' do
      @driver.click_submit
      @wait
      @driver.check_registration_successful
      sleep 10
      # @driver.check_registration_successful('Thank you for your registration')
    end


  end

end
