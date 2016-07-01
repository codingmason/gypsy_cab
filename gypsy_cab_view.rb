
module GypsyCabView

  def intro_screen
    puts "Would you like to verify by (1) name or (2) license number?"
    gets.chomp
  end

  def ask_for_name
    puts "What is the last name of the cabbie?"
    last_name = gets.chomp
    puts "What is the first name of the cabbie?"
    first_name = gets.chomp
    puts "What is the middle name or initial of the cabbie?\n(If none, just press ENTER)"
    middle_name = gets.chomp
    if middle_name.length > 0
      middle_name = ",#{middle_name}"
    end
    return "#{last_name},#{first_name}#{middle_name}".upcase
  end

  def ask_for_license
    puts "What is the license number?"
    gets.chomp
  end

  def print_positive_results
    puts "Your cabbie has a valid medallion"
  end

  def print_negative_results
    puts "Call your loved ones to tell them goodbye."
    puts "Give all your money to the cabbie and jump out of the vehicle."
  end

  def print_invalid_option
    puts "Sorry, please choose a valid option."
  end

end


