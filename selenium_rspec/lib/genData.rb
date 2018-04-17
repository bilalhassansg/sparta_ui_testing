require 'services/genData_un'
require 'services/genData_email'

class GenDataio
  def genData_un_services
    GenUN.new
  end

  def genData_email_services
    GenEmail.new
  end

end
