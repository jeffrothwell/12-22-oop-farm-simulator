class Field
  attr_accessor :type, :size, :field_harvest

  def initialize(type, size)
    @type = type
    @size = size
    @field_harvest = 0
  end

  def harvest
    if self.type = "corn"
      amount_harvested = self.size * 20
    elsif self.type = "wheat"
      amount_harvested = self.size * 30
    end
    self.field_harvest += amount_harvested
    return amount_harvested
  end

end
