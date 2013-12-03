class CreateResourceTypes < ActiveRecord::Migration
  def change
    create_table :resource_types do |t|
      t.references :resource_fork, index: true
      t.string :name

      t.timestamps
    end
  end
end
