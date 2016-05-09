class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.references :artefact, index: true
      t.references :character, index: true

      t.timestamps
    end
  end
end
