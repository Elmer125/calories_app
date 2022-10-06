class CreateCalories < ActiveRecord::Migration[7.0]
  def change
    create_table :calories do |t|
      t.integer :calories_number
      t.boolean :is_burned
      t.text :doing_what

      t.timestamps
    end
  end
end
