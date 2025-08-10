require "rspec"
require_relative "../word_wrap_tpp_1"

RSpec.describe "#word_wrap_tpp_1" do
  # context "when no text is passed" do
  #   it "raises error" do
  #     expect{word_wrap_tpp_1(nil, 5)}.to raise_error
  #   end
  # end
  # Fluke or False positive
  # First test shouldn't be expecting an error because 
  # 1. anecdotally -> We need to write a simple test that fails. expecting something to raise error without its existence always raises error
  # 2. I write a test to check if method returns error, and the method doesn't exist yet. I am getting what I am expecting but not from where I want it.  
  context "when text passed is empty" do
    it "return an empty" do
      expect(word_wrap_tpp_1("", 5)).to eq("")
    end
  end
  # I have three test cases as options
  # 1. when text is there and counter is not there (unconditional -> if)
  # 2. when text is there and counter is there counter is shorter than text (This one needs more than one transformation but to start with unconditional -> if and the next one could be some transformation up the order)
  # 3. when text is there and counter is there counter is longer than text (unconditional->if to start with but making it pass requires expression->function)
  
  #
  context "when text passed but counter is <1" do
    it "return an empty" do
      expect{word_wrap_tpp_1("word", 0)}.to raise_error
    end
  end

  # 2. when text is there and counter is there counter is shorter than text (This one needs more than one transformation but to start with unconditional -> if and the next one could be some transformation up the order)
  # 3. when text is there and counter is there counter is longer than text (unconditional->if to start with but making it pass requires expression->function)
  context "when shorter text than the counter is passed" do
    it "returns the text" do
      expect(word_wrap_tpp_1("Hello", 6)).to eq("Hello")
    end
  end
  # 1. Test multiple words seperated by spaces
  # Plural of the above test requires a lot of work
  # 2. Test single long word 
  # Plural of the above does need so much
  context "when longer text than the counter is passed" do
    it "returns the wrapped text at counter length" do
      expect(word_wrap_tpp_1("Hello", 3)).to eq("Hel\nlo")
      expect(word_wrap_tpp_1("Hello", 2)).to eq("He\nll\no") #state->recursion
    end
  end

  context "when two words each shorter than counter but togeather greater than it" do
    it "returns the wraps of text at spaces" do
      expect(word_wrap_tpp_1("Hello Hello", 7)).to eq("Hello\nHello")
      expect(word_wrap_tpp_1("Hello Hello Hello", 7)).to eq("Hello\nHello\nHello")
      expect(word_wrap_tpp_1("Dear Monica", 7)).to eq("Dear\nMonica")
    end
  end
end