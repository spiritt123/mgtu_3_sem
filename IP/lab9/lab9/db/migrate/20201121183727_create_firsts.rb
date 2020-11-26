class CreateFirsts < ActiveRecord::Migration[6.0]
  def change
    create_table :firsts do |t|

      t.timestamps
    end
  end
end
