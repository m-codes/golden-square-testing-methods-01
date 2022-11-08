require 'greet'

RSpec.describe "greet method" do
  it "say 'Hello, +name!'" do
    result = greet("Bob")
    expect(result).to eq "Hello, Bob!"
  end
end
