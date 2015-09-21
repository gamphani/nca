class CreateFormHealthReproductiveHealthOutputThree < ActiveRecord::Migration
  def change
    create_table :form_health_reproductive_health_output_threes do |t|
      t.date :start_date
      t.date :end_date

      t.string :sens_camp_key_mes_1
      t.string :sens_camp_key_mes_2
      t.string :sens_camp_key_mes_3
      t.string :sens_camp_key_mes_4
      t.string :sens_camp_key_mes_5
      t.string :sens_camp_key_mes_6
      t.string :sens_camp_key_mes_7
      t.string :sens_camp_key_mes_8
      t.string :sens_camp_key_mes_9
      t.string :sens_camp_channel_1
      t.string :sens_camp_channel_2
      t.string :sens_camp_channel_3
      t.string :sens_camp_channel_4
      t.string :sens_camp_channel_5
      t.string :sens_camp_channel_6
      t.string :sens_camp_channel_7
      t.string :sens_camp_channel_8
      t.string :sens_camp_channel_9
      t.string :sens_camp_key_mes_fig_1
      t.string :sens_camp_key_mes_fig_2
      t.string :sens_camp_key_mes_fig_3
      t.string :sens_camp_key_mes_fig_4
      t.string :sens_camp_key_mes_fig_5
      t.string :sens_camp_key_mes_fig_6
      t.string :sens_camp_key_mes_fig_7
      t.string :sens_camp_key_mes_fig_8
      t.string :sens_camp_key_mes_fig_9
      t.string :ad_camp_key_mes_1
      t.string :ad_camp_key_mes_2
      t.string :ad_camp_key_mes_3
      t.string :ad_camp_key_mes_4
      t.string :ad_camp_key_mes_5
      t.string :ad_camp_key_mes_6
      t.string :ad_camp_key_mes_7
      t.string :ad_camp_key_mes_8
      t.string :ad_camp_key_mes_9
      t.string :ad_camp_key_mes_10
      t.string :ad_camp_key_mes_11
      t.string :ad_camp_key_mes_12
      t.string :ad_camp_key_channel_1
      t.string :ad_camp_key_channel_2
      t.string :ad_camp_key_channel_3
      t.string :ad_camp_key_channel_4
      t.string :ad_camp_key_channel_5
      t.string :ad_camp_key_channel_6
      t.string :ad_camp_key_channel_7
      t.string :ad_camp_key_channel_8
      t.string :ad_camp_key_channel_9
      t.string :ad_camp_key_channel_10
      t.string :ad_camp_key_channel_11
      t.string :ad_camp_key_channel_12
      t.string :ad_camp_key_mes_fig_1
      t.string :ad_camp_key_mes_fig_2
      t.string :ad_camp_key_mes_fig_3
      t.string :ad_camp_key_mes_fig_4
      t.string :ad_camp_key_mes_fig_5
      t.string :ad_camp_key_mes_fig_6
      t.string :ad_camp_key_mes_fig_7
      t.string :ad_camp_key_mes_fig_8
      t.string :ad_camp_key_mes_fig_9
      t.string :ad_camp_key_mes_fig_10
      t.string :ad_camp_key_mes_fig_11
      t.string :ad_camp_key_mes_fig_12
      t.string :special_event_days
      t.string :management_of_youth_clubs
      t.string :iec_posters
      t.string :iec_10
      t.string :iec_flyers
      t.string :iec_tshirts
      t.string :iec_10121022
      t.string :jingles
      t.string :jingles_aired
      t.string :couples
      t.string :counselors
      t.string :parliament
      t.timestamps null: false

    end
  end
end
