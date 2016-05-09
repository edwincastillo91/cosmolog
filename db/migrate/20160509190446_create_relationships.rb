class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :character, index: true

      t.timestamps
    end
  end
end
