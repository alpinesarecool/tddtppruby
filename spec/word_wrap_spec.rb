require "rspec"
require_relative "../word_wrap"

RSpec.describe "#word_wrap" do
  it "returns nil when arguments text to be wrapped is empty" do
    expect(word_wrap("", 0)).to eq("")
  end
  
  it "returns entire text when counter is zero" do
    expect(word_wrap("Hello world", 0)).to eq("Hello world")
  end
end