class Roman

  def self.to_roman(input)

    one = ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
    ten = ['X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
    hundred = ['C', 'CC', 'CCC', 'CD', 'D' ,'DC', 'DCC', 'DCCC', 'CM']
    thousand = ['M', 'MM', 'MMM']
    roman_numbers = [one, ten, hundred, thousand]

    roman = ''
    input = input.to_s

    input.reverse.each_char.with_index do |number, i|
      roman.prepend roman_numbers[i][(number.to_i - 1)] if number.to_i > 0
    end
    roman

  end

end
