require 'sprite'

class Sprite
  attr_reader :row, :column

  def location=(coords)
    @row, @column = coords
  end

  def <=>(other)
    return 1 if other.nil?
    self.display_priority <=> other.display_priority
  end

  def display_priority
    0
  end
end
