
class TaxiDriver
attr_reader :type


  def initialize(options={})
    @name = options.fetch("name", "")
    @license_number = options.fetch("license_number", "")
    @expiration_date = options.fetch("expiration_date", "")
    @last_updated_date = options.fetch("last_updated_date", "")
    @last_updated_time = options.fetch("last_updated_time", "")
    @type = options.fetch("type", false)
  end

  def verify
    type ? true : false
  end

end
