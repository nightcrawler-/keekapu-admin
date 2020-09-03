class AddLastSignItAtToAdminUser < ActiveRecord::Migration[6.0]
  def change
    add_column :admin_users, :last_sign_in_at, :datetime
  end
end
