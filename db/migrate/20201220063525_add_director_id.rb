class AddDirectorId < ActiveRecord::Migration[6.0]
  def change
    add_column :filmdetails, :director_id, :integer
  end
end
