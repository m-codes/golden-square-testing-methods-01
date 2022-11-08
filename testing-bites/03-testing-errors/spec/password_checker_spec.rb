require 'password_checker'

RSpec.describe PasswordChecker do
  it 'return true if password greater than 8 characters' do
    password = PasswordChecker.new
    expect(password.check('123456789')).to eq true
  end
  it 'return error if password less than 8 characters' do
    password = PasswordChecker.new
    expect{password.check('123')}.to raise_error "Invalid password, must be 8+ characters."
  end
end
