class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :link
      t.string :level
      t.string :descrip
    end
  end
end
