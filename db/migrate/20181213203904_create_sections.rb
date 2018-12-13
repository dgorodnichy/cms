class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.integer :page_id
      t.text :content
      t.integer :template

      t.timestamps
    end
  end
end
