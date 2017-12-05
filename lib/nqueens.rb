class Nqueens
  def self.nqueens(queens)
    @board = []
    queens.times do |i|
        @board[i] = Array.new(queens, false)
    end

    result = ''
    if done?(0)
      @board.each do |line|
        line.each { |item| result << (item ? '*' : '-') }
        result << "\n"
      end

      return result
    end

    return 'Invalid input.'
  end

  def self.done?(line)
    return true if line == @board.length

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

  def self.available?(line, colum)
    queens = @board.length() -1
    options = [[1,1], [-1,-1], [-1,1], [1,-1]]

    @board.length.times do |i|
      if @board[line][i]
        return false
      end

      if @board[i][colum]
        return false
      end

      options.each do |option|
        changed_line = line + ((i + 1) * option[0])
        changed_colum = colum + ((i + 1) * option[1])

        max_excepted = changed_colum > queens || changed_line > queens
        min_excepted = changed_colum < 0 || changed_line < 0

        unless max_excepted || min_excepted
          return false if @board[changed_line][changed_colum]
        end
      end
    end

    return true
  end

end
