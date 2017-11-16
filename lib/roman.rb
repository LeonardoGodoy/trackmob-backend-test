class Roman

  def self.to_roman

    one = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
    ten = ["X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
    hundred = ["C", "CC", "CCC", "CD", "D" ,"DC", "DCC", "DCCC", "CM"]
    thousand = ["M", "MM", "MMM"]
    roman_numbers = [one, ten, hundred, thousand]

    roman = ""
    input = self.to_s
    input.reverse.each_char.with_index do |number, i|
      if number.to_i > 0
        roman.prepend roman_numbers[i][(number.to_i - 1)]
      end
    end
    roman
    
  end

end
