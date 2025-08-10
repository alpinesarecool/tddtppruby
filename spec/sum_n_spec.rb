
require "rspec"
require_relative "../sum_n"

RSpec.describe "#sum_n" do
  it "returns 0 for n = 0" do
    expect(sum_n(0)).to eq(0)
  end

  it "returns 1 for n = 1" do
    expect(sum_n(1)).to eq(1)
  end
end
