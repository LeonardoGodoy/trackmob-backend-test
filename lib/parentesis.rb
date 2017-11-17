class Parentesis

  def self.correct?(input)
    times = input.length / 2
    times.times do
      input = input.gsub("()", "").gsub("[]", "").gsub("{}", "")
      if input.length == 0
        return true 
      end
    end
    false
  end

end
