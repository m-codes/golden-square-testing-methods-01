require 'gratitudes'

# We use the class name here rather than a string
RSpec.describe Gratitudes do
  it "return the gratitude input" do
    my_gratitude = Gratitudes.new
    my_gratitude.add('makers')
    expect(my_gratitude.format).to eq "Be grateful for: makers"
  end

  it "return mutliple gratitude input" do
    my_gratitude = Gratitudes.new
    my_gratitude.add('makers')
    my_gratitude.add('peers')
    my_gratitude.add('yoga')
    expect(my_gratitude.format).to eq "Be grateful for: makers, peers, yoga"
  end

  it "return empty gratitude list" do
    my_gratitude = Gratitudes.new
    expect(my_gratitude.format).to eq "Be grateful for: "
  end
end
