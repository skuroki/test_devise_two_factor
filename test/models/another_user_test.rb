require "test_helper"

class AnotherUserTest < ActiveSupport::TestCase
  test "AnotherUser is two factor recoverable" do
    another_user = AnotherUser.create!(email: "test@example.com", password: "password")
    recovery_codes = another_user.generate_otp_backup_codes!
    assert_equal 5, recovery_codes.length
    recovery_codes.each do |code|
      validity = another_user.invalidate_otp_backup_code!(code)
      assert_equal validity, true
    end
  end
end
