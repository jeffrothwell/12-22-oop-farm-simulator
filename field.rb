class Field
  attr_accessor :type, :size, :field_harvest

  def initialize(type, size)
    @type = type
    @size = size
    @field_harvest = 0
  end

  def harvest(field)
    if field.type = "corn"
      amount_harvested = field.size * 20
    elsif field.type = "wheat"
      amount_harvested = field.size * 30
    end
    field.field_harvest += amount_harvested
    return amount_harvested
  end

end
