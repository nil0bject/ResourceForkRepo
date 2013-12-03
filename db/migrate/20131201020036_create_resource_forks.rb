class CreateResourceForks < ActiveRecord::Migration
  def change
    create_table :resource_forks do |t|
      t.string :file_name
      t.string :mac_creator
      t.string :mac_type

      t.timestamps
    end
  end
end
