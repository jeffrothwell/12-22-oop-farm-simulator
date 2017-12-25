class Field
  attr_accessor :type, :size

  @@fields = []
  @@total_harvest = 0

  def initialize(type, size)
    @type = type
    @size = size
  end

  def create(type, size)
    new_field = Field.new(type, size)
    @@fields << new_field
  end

end
