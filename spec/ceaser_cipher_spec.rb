require "rspec"
require_relative "../ceaser_cipher"

RSpec.describe "#ceaser_cipher" do
  context "When the message is empty" do
    it "return """ do
      expect(ceaser_cipher("",2)).to eq("")
    end
  end
  context "When the key is 0" do
    it "return the given text" do
      expect(ceaser_cipher("Hello",0)).to eq("Hello")
    end
  end
  context "When the key is 1" do
    it "return the given text shifted right by 1" do
      expect(ceaser_cipher("abc",1)).to eq("bcd")
      expect(ceaser_cipher("abcd",1)).to eq("bcde")
    end
  end
  context "When the message is z and key is 1" do
    it "return the given text shifted circular right by 1" do
      expect(ceaser_cipher("z",1)).to eq("a")
    end
  end
  context "When the message is zebra and key is 5" do
    it "return the given text shifted circular right by 5" do
      expect(ceaser_cipher("zebra",5)).to eq("ejgwf")
    end
  end

end