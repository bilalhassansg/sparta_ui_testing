require 'faker'

class GenUN
  def generate_username
    fake_username = Faker::Internet.user_name
  end
end
