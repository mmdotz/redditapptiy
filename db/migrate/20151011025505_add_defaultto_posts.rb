class AddDefaulttoPosts < ActiveRecord::Migration
  def change
    change_column_default(:posts, :num_votes, 0)
  end
end
