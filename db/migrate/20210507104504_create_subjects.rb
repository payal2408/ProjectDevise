class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :email
      t.string :login

      t.timestamps
    end
  end
end
