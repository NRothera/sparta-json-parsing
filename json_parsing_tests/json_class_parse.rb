require 'json'

class ParseJson

  attr_accessor :json_file

  def initialize(json_file)

    @json_file = JSON.parse(File.read(json_file))

  end

  def get_base_value

    @json_file['base']

  end

  def get_rates_value

    @json_file['rates']

  end

  def get_rates_value_length

    @json_file['rates'].length

  end

  def get_first_rate_key

    
  end

  def get_date_value
    @json_file['date']
  end

end






#
