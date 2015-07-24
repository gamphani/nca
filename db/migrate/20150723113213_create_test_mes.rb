class CreateTestMes < ActiveRecord::Migration
  def change
    create_table :test_mes do |t|
      t.integer :me

      t.timestamps null: false
    end
  end
end
