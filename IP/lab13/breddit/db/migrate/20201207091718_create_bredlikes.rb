class CreateBredlikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bredlikes do |t|
      t.integer :id_l
      t.string :name

      t.timestamps
    end

  end
end
