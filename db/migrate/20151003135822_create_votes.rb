class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :up
      t.integer :down
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
