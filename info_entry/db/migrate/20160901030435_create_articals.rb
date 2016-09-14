class CreateArticals < ActiveRecord::Migration
  def change
    create_table :articals do |t|
      t.text :author
      t.text :title
      t.integer :year
      t.string :publisher
      t.text :journalname
      t.integer :page
      t.string :month
      t.string :doi
      t.integer :volume
      t.integer :submitter
      t.string :status
      t.string :research_methods
      t.string :research_metric
      t.string :research_participants
      t.string :method
      t.string :technique
      t.string :tool
      t.string :evidence
     t.timestamps null: false
      end
      
      
      add_foreign_key :articals, :users, column: :submitter, primary_key: :user_id
  end
end
