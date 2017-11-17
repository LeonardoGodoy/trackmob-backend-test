require_relative "../lib/roman"

describe Roman do
  describe ".to_roman" do

    context "for 1 to 10" do
      expected_romans = {'1': 'I', '2': 'II', '3': 'III', '4': 'IV', '5': 'V', '6': 'VI', '7': 'VII', '8': 'VIII', '9': 'IX', '10': 'X'}
      expected_romans.each do |value, expected|
        it "input: #{value}\t output: #{expected}" do
          result = Roman.to_roman(value)
          expect(result).to eql(expected)
        end
      end
    end

    context "max number" do
      it "input: 3999\t output: MMMCMXCIX" do
        expect(Roman.to_roman(3999)).to eql("MMMCMXCIX")
      end
    end

  end
end
