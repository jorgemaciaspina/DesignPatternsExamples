# app.rb
require_relative 'shape_factory'

%w[circle square triangle].each do |type|
  begin
    shape = ShapeFactory.create(type)
    shape.draw
  rescue ArgumentError => e
    puts e.message
  end
end