class CreateJoinTableFlatsTags < ActiveRecord::Migration
  def change
  	create_join_table :flats, :tags
  end
end
