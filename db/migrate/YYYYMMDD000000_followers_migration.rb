class CreateFollowers < ActiveRecord::Migration[6.1]
def change
create_table :followers do |t|
t.references :follower, foreign_key: {to_table: :users}
t.references :followed, foreign_key: {to_table: :users}
t.timestamps
end
add_index :followers, [:follower_id, :followed_id], unique: true
end
end