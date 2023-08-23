class Rover
  attr_accessor :x, :y, :direction

  DIRECTIONS = ['N', 'E', 'S', 'W']

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def execute_command(command)
    case command
    when 'L'
      turn_left
    when 'R'
      turn_right
    when 'M'
      move_forward
    end
  end

  def turn_left
    current_index = DIRECTIONS.index(@direction)
    @direction = DIRECTIONS[(current_index - 1) % 4]
  end

  def turn_right
    current_index = DIRECTIONS.index(@direction)
    @direction = DIRECTIONS[(current_index + 1) % 4]
  end

  def move_forward
    case @direction
    when 'N'
      @y += 1
    when 'E'
      @x += 1
    when 'S'
      @y -= 1
    when 'W'
      @x -= 1
    end
  end

  def to_s
    "#{@x} #{@y} #{@direction}"
  end
end
