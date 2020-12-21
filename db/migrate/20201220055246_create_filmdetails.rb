class CreateFilmdetails < ActiveRecord::Migration[6.0]
  def change
    create_table :filmdetails do |t|
      t.string "title"
      t.string "release"
      t.string "category"
      t.string "starring"
      t.string "description"
      t.timestamps
    end
  end
end
