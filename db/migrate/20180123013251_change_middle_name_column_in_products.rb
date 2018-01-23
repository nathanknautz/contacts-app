class ChangeMiddleNameColumnInProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :contacts, :MiddleName, :middle_name
  end
end
