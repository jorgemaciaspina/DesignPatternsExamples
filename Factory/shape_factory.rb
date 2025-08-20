# shape_factory.rb
require_relative 'shapes'

class ShapeFactory
  def self.create(shape_type)
    case shape_type.to_s.downcase
    when 'circle' then Circle.new
    when 'square' then Square.new
    else
      raise ArgumentError, "Unknown shape type: #{shape_type}"
    end
  end
end