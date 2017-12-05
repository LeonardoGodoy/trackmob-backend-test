class Parentesis

  def self.correct?(input)
    times = input.length/2

    times.times do
      input =
        input
        .gsub('()', '')
        .gsub('[]', '')
        .gsub('{}', '')

      return true if input.length == 0
    end

    false
  end

end
