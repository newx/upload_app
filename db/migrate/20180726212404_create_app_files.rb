class CreateAppFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :app_files do |t|
      t.string :name
      t.string :status, default: "created"
      t.string :file_name
      t.text :file_data
      t.timestamps
    end
  end
end
