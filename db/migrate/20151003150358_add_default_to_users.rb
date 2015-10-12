class AddDefaultToUsers < ActiveRecord::Migration
  def change
    change_column_default :users, :password_digest, :null => false
  end
end

#change_column_null :users, :password_digest, false
