class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :college_name

      t.timestamps null: false

    end
  end
end
