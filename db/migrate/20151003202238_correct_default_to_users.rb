class CorrectDefaultToUsers < ActiveRecord::Migration
  def change
    change_column_default :users, :password_digest, :null => false
  end
end
