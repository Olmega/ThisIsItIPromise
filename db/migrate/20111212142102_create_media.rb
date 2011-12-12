class CreateMedia < ActiveRecord::Migration
  def self.up
    create_table :media do |t|
      t.string :title
      t.integer :year
      t.string :category
      t.string :comment
      t.integer :user
      t.string :rating

      t.timestamps
    end
  end

  def self.down
    drop_table :media
  end
end
