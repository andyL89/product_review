class ChangeInstrumentsToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_table :instruments, :products
  end
end
