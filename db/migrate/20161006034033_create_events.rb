class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :time
      t.string :name
      t.string :room
      t.string :presenter
      t.text :sum
      t.string :maps
      t.string :predoc
      t.string :postdoc
      t.string :food

      t.timestamps
    end
  end
end
