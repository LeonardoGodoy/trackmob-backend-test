require_relative "../lib/parentesis"

describe Parentesis do
  describe ".correct?" do

    context "check the balancement" do
      expected_parentesis = {"{{)(}}": false, "({)}": false, "[({})]": true, "{}([])": true, "{()}[[{}]]": true}
      expected_parentesis.each do |value, expected|
        it "Input: #{value}\tOutput: #{expected}" do
          result = Parentesis.correct?(value.to_s)
          expect(result).to eql(expected)
        end
      end
    end

  end
end
