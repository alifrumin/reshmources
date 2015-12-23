class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.belongs_to :resource, index: true
      t.belongs_to :topic, index: true
    end
  end
end
