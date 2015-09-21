class CreateFormHealthReproductiveHealthOutputFour < ActiveRecord::Migration
  def change
    create_table :form_health_reproductive_health_output_fours do |t|
      t.date :start_date
      t.date :end_date

      t.string :comm_dia_leaders_m
      t.string :comm_dia_leaders_f
      t.string :comm_dia_chiefs_m
      t.string :comm_dia_chiefs_f
      t.string :comm_dia_politicians_m
      t.string :comm_dia_politicians_f
      t.string :srh_leaders_m
      t.string :srh_leaders_f
      t.string :srh_chiefs_m
      t.string :srh_chiefs_f
      t.string :srh_politicians_m
      t.string :srh_politicians_f
      t.string :sgbv_m
      t.string :sgbv_f

      t.timestamps null: false
    end
  end
end
