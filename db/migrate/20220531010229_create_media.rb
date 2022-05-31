class CreateMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :media do |t|
      t.string :name
      t.integer :owner_id
      t.string :location

      t.timestamps
    end
  end
end
