class AddAasmStateToTask < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :aasm_state, :string
  end
end
