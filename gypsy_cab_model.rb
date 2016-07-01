require 'open-uri'
require 'json'
require_relative 'taxi_driver'

class GypsyCabParse

  def parse_license_number(license_number)
    JSON.parse(open("https://data.cityofnewyork.us/resource/pm46-7vyh.json?license_number=#{license_number}").read)
  end

  def parse_name(name)
    JSON.parse(open("https://data.cityofnewyork.us/resource/pm46-7vyh.json?name=#{name}").read)
  end

  def build_cabbie(cabbie_info)
    cabbie = TaxiDriver.new(cabbie_info[0])
  end


end
