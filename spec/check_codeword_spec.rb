require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "checking if codeword is eq to horse" do
        result = check_codeword("horse")
            expect(result).to eq "Correct! Come in."
        result = check_codeword("hose") 
            expect(result).to eq "Close, but nope."
        result = check_codeword("hello")
            expect(result).to eq "WRONG!"
    end
end

