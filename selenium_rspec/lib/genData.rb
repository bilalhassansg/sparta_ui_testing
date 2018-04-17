require_relative 'services/genData_un'
require_relative 'services/genData_email'
require_relative 'services/genData_first_name'

class GenDataio
  def genData_un_services
    GenUN.new
  end

  def genData_email_services
    GenEmail.new
  end

  def generate_first_name_services
    GenFirstName.new
  end

end
