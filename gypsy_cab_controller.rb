require_relative 'gypsy_cab_view'
require_relative 'gypsy_cab_model'

class GypsyCabController
  attr_reader :parser
  include GypsyCabView

  def initialize
    @parser = GypsyCabParse.new
  end

  def run
    user_input = intro_screen
    if user_input == "1"
     cabbie_name = ask_for_name
     cabbie_info = parser.parse_name(cabbie_name)
      if cabbie_info.length == 0
        print_negative_results
      else
        cabbie = parser.build_cabbie(cabbie_info)
        print_positive_results(cabbie.expiration_date)
      end
    elsif user_input == "2"
      cabbie_license = ask_for_license
      cabbie_info = parser.parse_license_number(cabbie_license)
       if cabbie_info.length == 0
        print_negative_results
      else
        cabbie = parser.build_cabbie(cabbie_info)
        print_positive_results(cabbie.expiration_date)
      end
    else
      print_invalid_option
      run
    end
  end
end




controller = GypsyCabController.new
controller.run


