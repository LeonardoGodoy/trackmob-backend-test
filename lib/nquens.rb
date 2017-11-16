class Nquens

  def initialize(quens)
    @board = []
    quens.times do |i|
        @board[i] = Array.new(quens, false)
    end

    if done?(0)
      @board.each do |line|
        line.each { |item| print item ? ' * ' : ' - ' }
        puts
      end
      return @board
    end
    puts "Invalid input."
  end

  def done?(line)
    if line == @board.length()
      return true
    end

    @board.length().times do |column|

      if available?(line, column)
        @board[line][column] = true
        if done?(line + 1)
          return true
        end
        @board[line][column] = false
      end
    end
    false

  end

  def places(line)
    available_places = []

    @board.length.times do |i|
      if available?(line, i)
        available_places.push [line, i]
      end
    end

    available_places
  end

  def available?(y, x)

    quens = @board.length() -1
    options = [[1,1],[-1,-1],[-1,1],[1,-1]]

    @board.length.times do |i|
      if @board[y][i]
        return false
      end

      if @board[i][x]
        return false
      end

      options.each do |option|
        changed_y = y + ((i+1) * option[0])
        changed_x = x + ((i+1) * option[1])
        if changed_x <= quens && changed_y <= quens && changed_x >= 0 && changed_y >= 0
          if @board[changed_y][changed_x]
            return false
          end
        end
      end
    end

    return true
  end

end
