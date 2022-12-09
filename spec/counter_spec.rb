require 'counter.rb'

RSpec.describe "Counter class" do
    it "add method returns count = 0 plus number and report updates user" do
        counter = Counter.new
        result = counter.count
            expect(result).to eq 0
        result = counter.add(50)
            expect(result).to eq 50
        result = counter.report
            expect(result).to eq "Counted to 50 so far."
    end
end
