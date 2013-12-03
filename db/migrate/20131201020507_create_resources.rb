class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.references :resource_type, index: true
      t.integer :resource_id
      t.string :name
      t.text :data

      t.timestamps
    end
  end
end
