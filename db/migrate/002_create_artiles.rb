class CreateArtiles < ActiveRecord::Migration
  def self.up
    create_table :artiles do |t|
      t.string :title
      t.text :body
      t.timestamps
    end
  end

  def self.down
    drop_table :artiles
  end
end
