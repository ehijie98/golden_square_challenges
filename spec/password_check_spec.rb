require 'password_check'

RSpec.describe PasswordChecker do
    it "checks if password is 8+ characters" do
        password_checker = PasswordChecker.new
            expect(password_checker.check("qwerty123")).to eq true
            expect(password_checker.check("hello123")).to eq true
    end
    it "fails if password is less than 8 characters" do
        password_checker = PasswordChecker.new
            expect {password_checker.check("qwerty1")}.to raise_error "Invalid password, must be 8+ characters."
            expect {password_checker.check("123")}.to raise_error "Invalid password, must be 8+ characters."
    end
end