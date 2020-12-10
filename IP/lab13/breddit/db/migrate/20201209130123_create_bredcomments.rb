class CreateBredcomments < ActiveRecord::Migration[6.0]
  def change
    create_table :bredcomments do |t|
      t.integer :id_p
      t.integer :id_c
      t.string :content
      t.string :name

      t.timestamps
    end
  end
end
