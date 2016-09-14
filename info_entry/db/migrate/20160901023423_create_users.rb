class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: false do |t|
    t.primary_key :user_id
    t.string :username
    t.digest :password
    t.string :email
    t.string :affiliation
    t.integer :age
    t.string :gender
    
    t.timestamps null: false
    end
  end
end
