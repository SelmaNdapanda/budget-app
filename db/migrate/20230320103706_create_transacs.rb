class CreateTransacs < ActiveRecord::Migration[7.0]
  def change
    create_table :transacs do |t|
      t.string :name
      t.decimal :amout

      t.timestamps
    end
  end
end
