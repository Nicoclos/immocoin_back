class CreateRealties < ActiveRecord::Migration[7.0]
  def change
    create_table :realties do |t|
      t.string :title
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
