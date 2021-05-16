class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :email
      t.integer :number
      t.text :messege
      t.string :subject

      t.timestamps
    end
  end
end
