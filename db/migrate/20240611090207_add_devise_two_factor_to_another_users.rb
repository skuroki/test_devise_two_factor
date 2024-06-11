class AddDeviseTwoFactorToAnotherUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :another_users, :encrypted_otp_secret, :string
    add_column :another_users, :encrypted_otp_secret_iv, :string
    add_column :another_users, :encrypted_otp_secret_salt, :string
    add_column :another_users, :consumed_timestep, :integer
    add_column :another_users, :otp_required_for_login, :boolean
  end
end
