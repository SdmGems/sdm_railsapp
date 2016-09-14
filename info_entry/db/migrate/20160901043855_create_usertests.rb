class CreateUsertests < ActiveRecord::Migration
  def change
    create_table :usertests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
