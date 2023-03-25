class CreateGroupTransacs < ActiveRecord::Migration[7.0]
  def change
    create_table :group_transacs do |t|
      t.references :group, null: false, foreign_key: true
      t.references :transac, null: false, foreign_key: true

      t.timestamps
    end
  end
end
