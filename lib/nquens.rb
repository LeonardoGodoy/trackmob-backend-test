class Nquens

  def initialize(quens)
    @board = [
      [1,0,0,0],
      [0,0,1,0],
      [0,0,0,0],
      [0,0,0,0]
    ]
    @board.each { |line| puts "#{line}" }

    puts "Places line 0: #{places(3)}"
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
      if @board[i][x] != 0
        return false
      end

      options.each do |option|
        changed_y = y + ((i+1) * option[0])
        changed_x = x + ((i+1) * option[1])
        if changed_x <= quens && changed_y <= quens
          if @board[changed_y][changed_x] != 0
            return false
          end
        end
      end
    end

    return true
  end

end

print "Número de rainhas: "
quens = gets
Nquens.new(quens.to_i)
