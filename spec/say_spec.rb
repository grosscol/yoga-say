require 'say'

RSpec.describe Say do

  MAX_NUMBER = 999_999_999_999
  MIN_NUMBER = 0

  describe "in_english" do
    it "complains with lower than valid range" do
      expect{Say.new(-1).in_english}.to raise_error(ArgumentError)
    end

    it "complains with higher than valid range" do
      expect{Say.new(MAX_NUMBER+1).in_english}.to raise_error(ArgumentError)
    end

    it "says zero" do
      expect(Say.new(0).in_english ).to eq("zero")
    end

    it "says twenty" do
      expect(Say.new(20).in_english ).to eq("twenty")
    end


    it "works with hundreds" do

    end

    it "works with thousands" do

    end

    it "works with millions" do
      
    end

    it "works with billions" do

    end

    it "works with trillions" do

    end

    it "nests tens in hundreds" do

    end

    it "nests hundreds in thousands" do

    end

  end

end
