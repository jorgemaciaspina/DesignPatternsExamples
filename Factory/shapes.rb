# shapes.rb

class Shape
  # Interface method
  def draw
    raise NotImplementedError, 'Subclasses must implement draw'
  end
end

class Circle < Shape
  def draw
    puts '🔵 Drawing Circle'
  end
end

class Square < Shape
  def draw
    puts '⬛ Drawing Square'
  end
end