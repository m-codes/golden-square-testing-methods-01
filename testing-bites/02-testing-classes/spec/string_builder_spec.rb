require 'string_builder'

# We use the class name here rather than a string
RSpec.describe StringBuilder do
  it "returns hello" do
    my_string = StringBuilder.new
    my_string.add('hello')
    my_string_size = my_string.size
    expect(my_string_size).to eq 5
  end

  it "returns the string" do
    my_string = StringBuilder.new
    my_string.add('hello')
    expect(my_string.output).to eq "hello"
  end


  context "given one addition of a string" do
    it "output that string" do
      my_string = StringBuilder.new
      my_string.add('hello')
      my_string.add('world')
      my_string.add('cat')
      expect(my_string.output).to eq "helloworldcat"
    end

    it "has that string's length" do
      my_string = StringBuilder.new
      my_string.add('hello')
      expect(my_string.size).to eq 5
    end
  end



end
