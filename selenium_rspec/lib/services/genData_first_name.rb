require 'faker'

class GenFirstName
  def generate_first_name
    fake_first_name = Faker::Name.first_name
  end
end
