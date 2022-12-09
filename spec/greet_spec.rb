require 'greet.rb'

RSpec.describe "greet method" do
    it "returns greeting with name" do
        greeting = greet("Ehijie")
        expect(greeting).to eq "Hello, Ehijie!"
    end
end

