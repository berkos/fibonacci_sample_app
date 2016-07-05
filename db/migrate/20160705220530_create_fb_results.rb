class CreateFbResults < ActiveRecord::Migration[5.0]
  def change
    create_table :fb_results do |t|
      t.integer :sequence_number
      t.integer :result
      t.time :recursive_time
      t.time :loop_time

      t.timestamps
    end
  end
end
