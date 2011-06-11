class CreateListItems < ActiveRecord::Migration
  def self.up
    create_table :list_items do |t|
      t.string :description
      t.boolean :finished

      t.timestamps
    end
  end

  def self.down
    drop_table :list_items
  end
end