class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :color
      t.integer :number
      t.string :shape
      t.string :shading

      t.timestamps
    end
  end
end
