class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.attachment :file
      t.belongs_to :flat
      t.timestamps
    end
  end
end
