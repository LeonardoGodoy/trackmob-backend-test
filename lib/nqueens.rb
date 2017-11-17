class Nqueens

  def self.nqueens(queens)
    @board = []
    queens.times do |i|
        @board[i] = Array.new(queens, false)
    end

    result = ""
    if done?(0)
      @board.each do |line|
        line.each { |item| result << (item ? '*' : '-')}
        result << "\n"
      end
      return result
    end

    return "Invalid input."
  end

  def self.done?(line)
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

  def self.available?(y, x)

    queens = @board.length() -1
    options = [[1,1],[-1,-1],[-1,1],[1,-1]]

    @board.length.times do |i|
      #strat new thread
      if @board[y][i]
        return false
      end

      if @board[i][x]
        return false
      end

      options.each do |option|
        changed_y = y + ((i+1) * option[0])
        changed_x = x + ((i+1) * option[1])
        if changed_x <= queens && changed_y <= queens && changed_x >= 0 && changed_y >= 0
          if @board[changed_y][changed_x]
            return false
          end
        end
      end
    end

    return true
  end

end
