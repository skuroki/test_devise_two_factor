require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "User is two factor recoverable" do
    user = User.create!(email: "test@example.com", password: "password")
    recovery_codes = user.generate_otp_backup_codes!
    assert_equal 5, recovery_codes.length
    recovery_codes.each do |code|
      validity = user.invalidate_otp_backup_code!(code)
      assert_equal validity, true
    end
  end
end
