require 'faker'

class GenEmail
  def generate_email
    fake_email = Faker::Internet.email
  end
end
