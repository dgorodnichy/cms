class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :slug
      t.string :type

      t.timestamps
    end
  end
end
