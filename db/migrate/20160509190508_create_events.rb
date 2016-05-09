class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :name
      t.references :univers, index: true
      t.references :place, index: true
      t.date :day

      t.timestamps
    end
  end
end
