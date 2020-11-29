class CreatePerNums < ActiveRecord::Migration[6.0]
  def change
    create_table :per_nums do |t|
      t.string :arr
      t.string :output

      t.timestamps
    end
  end
end
