class CreateTransforms < ActiveRecord::Migration
  def change
    create_table :transforms do |t|
      t.text :data
      t.string :content_type
      t.references :resource, index: true

      t.timestamps
    end
  end
end
