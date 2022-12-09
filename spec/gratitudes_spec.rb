require 'gratitudes'

RSpec.describe "Gratitudes method" do
    it "add multiple graditudes to initial empty array" do
        multiple_gratitudes = Gratitudes.new
        result = multiple_gratitudes.add("my mother")
            expect(result).to eq ["my mother"]
        result = multiple_gratitudes.add("my dogs")
            expect(result).to eq ["my mother", "my dogs"]
        result = multiple_gratitudes.format
            expect(result).to eq "Be grateful for: my mother, my dogs"
    end
end
