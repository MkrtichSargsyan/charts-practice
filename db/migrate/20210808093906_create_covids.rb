class CreateCovids < ActiveRecord::Migration[6.1]
  def change
    create_table :covids do |t|
      t.string :month
      t.integer :deaths
      t.integer :recovered
      t.timestamps
    end
  end
end
