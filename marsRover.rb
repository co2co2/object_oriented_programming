class Rover
  def initialize (x, y, dir)
    @x_coordinate = x
    @y_coordinate = y
    @direction = dir
  end

  def read_instruction (instruction)
    @array = instruction.split("") #.split is useful for spliting string into array
    @array.each do |k|
      if k == "M"
        move
      else
        turn(k)
      end
    end
    puts "dir = #{@direction}"
    puts "x coordinate = #{@x_coordinate}"
    puts "y coordinate = #{@y_coordinate}"
  end

  def move
    case @direction
      when"N"
        @y_coordinate +=1
      when "S"
        @y_coordinate -=1
      when "E"
        @x_coordinate +=1
      when "W"
        @x_coordinate -=1
    end
  end

  def turn(dir)
    case @direction
      when "N"
        if dir == "R"
          @direction = "E"
        else
          @direction = "W"
        end
      when "S"
        if dir == "R"
          @direction = "W"
        else
          @direction = "E"
        end
      when "E"
        if dir == "R"
          @direction = "S"
        else
          @direction = "N"
        end
      when "W"
        if dir == "R"
          @direction = "N"
        else
          @direction = "S"
        end
    end
  end
end

rov1= Rover.new(1, 2, "N")
rov1.read_instruction("LMLMLMLMM")

rov2 = Rover.new(3, 3, "E")
rov2.read_instruction("MMRMMRMRRM")
