require 'report_length'

RSpec.describe "report_length method" do
    it "returns sentence describing length of string" do
        result = report_length("This should be 34 characters long!")
            expect(result).to eq "This string was 34 characters long."
        result = report_length("hello there")
            expect(result).to eq "This string was 11 characters long."
        result = report_length ("2 + 4 != 7")
            expect(result).to eq "This string was 10 characters long."
    end
end