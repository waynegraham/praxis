class Address
  def initialize(name, street, city, state, zip)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip = zip
  end

  def to_s
    return @name + "\n" + @street + "\n" + @city + ", " + @state + ' ' + @zip
  end
end

address = Address.new('Alex Gil',
                      '178 George...',
                      'Charlottesville',
                      'Va',
                      '22901'
                     )
puts address



