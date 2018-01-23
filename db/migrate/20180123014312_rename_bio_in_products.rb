class RenameBioInProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :contacts, :Bio, :bio
  end
end
