require "rspec"
require_relative "../word_wrap"

RSpec.describe "#word_wrap" do
  it "returns nil when arguments text to be wrapped is empty" do
    expect(word_wrap("", 0)).to eq("")
  end
  
  it "returns entire text when counter is zero" do
    expect(word_wrap("Hello world", 0)).to eq("Hello world")
  end

  it "returns entire text when counter is zero" do
    expect(word_wrap("Hello world", 0)).to eq("Hello world")
  end
  
  it "returns by breaking the word into new line when the text has multiple words and each word's length is less than the counter" do
    expect(word_wrap("Hello world", 6)).to eq("Hello\nworld")
  end

  it "returns by breaking the word into new line when the text has single word word's length is less than the counter" do
    expect(word_wrap("Helloworld", 6)).to eq("Hellow\norld")
  end

  it "returns by breaking the word into new line with new words and when the word itsself is larger than  the counter further breaks it with new line" do
    expect(word_wrap("I am hello world", 3)).to eq("I\nam\nhel\nlo\nwor\nld")
  end
end