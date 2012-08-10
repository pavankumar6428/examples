class CreateClocks < ActiveRecord::Migration
  def change
    create_table :clocks do |t|
      t.string :name
      t.string :minutes_ahead

      t.timestamps
    end
  end
end
