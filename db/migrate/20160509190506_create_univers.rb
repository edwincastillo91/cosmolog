class CreateUnivers < ActiveRecord::Migration
  def change
    create_table :univers do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
