class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.references :univers, index: true
      t.references :membership, index: true

      t.timestamps
    end
  end
end
