class AddActiveColumnToStudentsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :active, :boolean, :default => true
  end
end
