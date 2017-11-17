require_relative "../lib/nqueens"

describe Nqueens do
  describe ".nqueens" do

    context "check the output board" do
      it "input: 4\n\toutput:\n\t-*--\n\t---*\n\t*---\n\t--*-\n" do
        expect(Nqueens.nqueens(4)).to eq("-*--\n---*\n*---\n--*-\n")
      end
    end

    context "check impossibilities" do
      it "input: 3\toutput: Invalid input. " do
        expect(Nqueens.nqueens(3)).to eq("Invalid input.")
      end
    end

  end
end
