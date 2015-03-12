class Manytomany < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :bandname
      t.timestamps
    end
    remove_column(:concerts, :bandname, :string)
    add_column(:concerts, :band_id, :integer)
  end
end
