require 'present.rb'

RSpec.describe Present do
    it "wraps and unwraps a present" do
        present = Present.new 
        present.wrap("XBOX")
        expect(present.unwrap).to eq "XBOX"
    end
    it "fails if unwrap zero contents" do
        present = Present.new 
        expect {present.unwrap()}.to raise_error "No contents have been wrapped."
    end
    it "fails if wrap zero contents" do
        present = Present.new
        present.wrap("Playstation")
        expect{present.wrap("XBOX")}.to raise_error "A contents has already been wrapped."
    end
end        