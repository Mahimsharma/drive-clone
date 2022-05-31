class CreateSharedMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :shared_media do |t|
      t.integer :file_id
      t.integer :shared_with

      t.timestamps
    end
  end
end
