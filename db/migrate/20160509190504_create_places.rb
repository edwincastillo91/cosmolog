class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.references :univers, index: true
      t.string :name

      t.timestamps
    end
  end
end
