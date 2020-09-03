class AddGoogleSecretsToAdminUser < ActiveRecord::Migration[6.0]
  def change
    add_column :admin_users, :google_secret, :string
    add_column :admin_users, :mfa_secret, :string
  end
end
