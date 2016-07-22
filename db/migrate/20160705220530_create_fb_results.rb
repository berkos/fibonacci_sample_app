class CreateFbResults < ActiveRecord::Migration[5.0]
  def change
    create_table :fb_results do |t|
      t.integer :sequence_number
      t.integer :result
      t.decimal :recursive_time
      t.decimal :loop_time

      t.timestamps
    end
  end
end
