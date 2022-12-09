require 'string_builder'


RSpec.describe "StringBuilder class" do
    it "contains methods to amend initial string and return output" do
        string_builder = StringBuilder.new
        result = string_builder.add("Hello")
            expect(result).to eq "Hello"
        result = string_builder.add(", Ehijie!")
            expect(result).to eq "Hello, Ehijie!"
        result = string_builder.size
            expect(result).to eq 14
        result = string_builder.output
            expect(result).to eq "Hello, Ehijie!"
    end
end
