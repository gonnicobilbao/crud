class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.integer :dni
      t.string :mail

      t.timestamps
    end
  end
end
