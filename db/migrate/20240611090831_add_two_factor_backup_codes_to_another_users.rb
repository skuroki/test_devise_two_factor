class AddTwoFactorBackupCodesToAnotherUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :another_users, :otp_backup_codes, :text
  end
end
