require 'report_length'

RSpec.describe "check report length method" do
  it "returns the length of the string" do
    result = report_length("hello")
    expect(result).to eq "This string was 5 characters long."
  end
end
