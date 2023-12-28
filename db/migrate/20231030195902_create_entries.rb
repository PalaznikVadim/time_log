class CreateEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :entries do |t|
      t.string :time
      t.string :comment
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
