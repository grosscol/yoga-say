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

    it "appends teen for 13 through 19" do
      (13..19).each do |i|
        expect(Say.new(i).in_english).to match(/teen$/)
      end
    end

    it "says zero" do
      expect(Say.new(0).in_english ).to eq("zero")
    end

    it "says twenty" do
      expect(Say.new(20).in_english ).to eq("twenty")
    end

    it "works with teens" do
      expect(Say.new(13).in_english ).to eq("thirteen")
      expect(Say.new(15).in_english ).to eq("fifteen")
    end

    it "works with hundreds" do
      expect(Say.new(100).in_english ).to eq("one hundred")
      expect(Say.new(200).in_english ).to eq("two hundred")
      expect(Say.new(300).in_english ).to eq("three hundred")
      expect(Say.new(400).in_english ).to eq("four hundred")
    end

    it "works with thousands" do
      expect(Say.new(4000).in_english ).to eq("four thousand")
      expect(Say.new(5000).in_english ).to eq("five thousand")
      expect(Say.new(6000).in_english ).to eq("six thousand")
      expect(Say.new(7000).in_english ).to eq("seven thousand")
    end

    it "works with millions" do
      expect(Say.new(7_000_000).in_english ).to eq("seven million")
    end

    it "works with billions" do
      expect(Say.new(8_000_000_000).in_english ).to eq("eight billion")
    end

    it "works with trillions" do
      skip "Remains to be implemented"
      expect(Say.new(9_000_000_000_000).in_english ).to eq("nine trillion")
    end

  end

end
