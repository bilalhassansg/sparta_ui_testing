require 'spec_helper'

describe 'testing the random form data services' do

  before(:all) do
    @form_data_service_username = GenDataio.new.genData_un_services
    @form_data_service_email = GenDataio.new.genData_email_services
  end

  it 'should return the username as a string' do
    expect(@form_data_service_username.generate_username).to be_a(String)
  end

  it 'should return the email as a string' do
    expect(@form_data_service_email.generate_email).to be_a(String)
  end



end
