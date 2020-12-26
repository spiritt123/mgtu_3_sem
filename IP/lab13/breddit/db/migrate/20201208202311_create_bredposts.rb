class CreateBredposts < ActiveRecord::Migration[6.0]
  def change
    execute "ALTER TABLE collections ADD PRIMARY KEY (id);"
    create_table :bredposts, :id => false do |t|
      t.integer :id
      t.string :title
      t.string :content
      t.string :name

      t.timestamps
    end

    add_index :bredposts, :id
  end
end
