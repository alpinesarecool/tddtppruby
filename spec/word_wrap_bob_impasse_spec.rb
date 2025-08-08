require "rspec"
require_relative "../word_wrap_bob_impasse"

RSpec.describe "#word_wrap_bob_impasse" do
  it "return empty when text is nil" do
    expect(word_wrap_bob_impasse(nil,10)).to eq("")
  end
  it "return empty when text is """ do
    expect(word_wrap_bob_impasse("",10)).to eq("")
  end
  # this is the spec that caused the impasse
  # There would a spec that would still return ""
  # let's say when n=0 return "" or throw exception
  # it "return word for a short unwrapped text" do
  #   expect(word_wrap_bob_impasse("word",10)).to eq("word")
  # end
  # it "return 2 words each shorter than the counter" do
  #   expect(word_wrap_bob_impasse("word word",6)).to eq("word\nword")
  # end
  # it "3 words just over the limit should return two words" do
  #   expect(word_wrap_bob_impasse("word word word",9)).to eq("word word\nword")
  # end 
  it "throw exception when counter is < 1" do
    expect{word_wrap_bob_impasse("word", 0)}.to raise_error
  end
  it "breaks the word at length when longer than counter" do
    expect(word_wrap_bob_impasse("helloworld",5)).to eq("hello\nworld")
    expect(word_wrap_bob_impasse("helloworld",6)).to eq("hellow\norld")
  end
end