# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150930073948) do

  create_table "colleges", force: :cascade do |t|
    t.string   "college_name", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "docs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "department", limit: 255
    t.string   "attachment", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.string   "facility_name", limit: 255
    t.string   "proprieter",    limit: 255
    t.string   "district",      limit: 255
    t.string   "cluster",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "form_gender_theologies", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "theo_training_manuals",          limit: 4
    t.integer  "theo_f_and_m_teachers",          limit: 4
    t.integer  "theo_context_text",              limit: 4
    t.integer  "theo_counselors",                limit: 4
    t.integer  "theo_code_conduct",              limit: 4
    t.integer  "theo_code_conduct_emp",          limit: 4
    t.integer  "theo_diaconal_strategies",       limit: 4
    t.integer  "theo_develop_advocacy_strategy", limit: 4
    t.integer  "theo_using_advocacy_strategy",   limit: 4
    t.integer  "theo_monit_visit",               limit: 4
    t.integer  "theo_reports_produced",          limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "theo_church_leader_tot",         limit: 255
    t.string   "theo_church_joint_declaration",  limit: 255
  end

  create_table "form_gender_traffickings", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "trfk_cases_reported",          limit: 255
    t.string   "trfk_cases_resolved",          limit: 255
    t.string   "trfk_percent_reduction",       limit: 255
    t.string   "trfk_incorporation_in_church", limit: 255
    t.string   "trfk_outreach",                limit: 255
    t.string   "trfk_mobile_clinic",           limit: 255
    t.string   "trfk_awareness",               limit: 255
    t.string   "trfk_informal_justice",        limit: 255
    t.string   "trfk_other_service_providers", limit: 255
    t.string   "trfk_rescued",                 limit: 255
    t.string   "trfk_court_rehabilitated",     limit: 255
    t.string   "trfk_network_initiatives",     limit: 255
    t.string   "trfk_interagency_meet",        limit: 255
    t.string   "trfk_issues_raised",           limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "form_health_hivs", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.text     "hiv_rights_holders",          limit: 65535
    t.text     "hiv_lobby_meetings",          limit: 65535
    t.text     "hiv_women_htc_pmtct",         limit: 65535
    t.text     "hiv_budget_allocation",       limit: 65535
    t.text     "hiv_rh_receiving_care",       limit: 65535
    t.text     "hiv_women_youth_ovc",         limit: 65535
    t.text     "hiv_reconstruction",          limit: 65535
    t.text     "hiv_people_htc",              limit: 65535
    t.text     "hiv_child_pss",               limit: 65535
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "hiv_pychosocial",             limit: 255
    t.string   "hiv_cbccs_constructed",       limit: 255
    t.string   "hiv_cbccs_rehabilitated",     limit: 255
    t.string   "hiv_cc_established",          limit: 255
    t.string   "hiv_child_cbccs",             limit: 255
    t.string   "hiv_child_cc",                limit: 255
    t.string   "hiv_caregiver_ecd",           limit: 255
    t.string   "hiv_caregiver_icdp",          limit: 255
    t.string   "hiv_star_circle_established", limit: 255
    t.string   "hiv_community_star_circle",   limit: 255
    t.string   "hiv_child_eid",               limit: 255
    t.string   "hiv_viral_load",              limit: 255
    t.string   "hiv_resistance",              limit: 255
    t.string   "hiv_adolescent_life_skills",  limit: 255
  end

  create_table "form_health_iptts", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "iptt_fp_service_providers",      limit: 4
    t.integer  "iptt_active_youth",              limit: 4
    t.integer  "iptt_youth_partcipation",        limit: 4
    t.integer  "iptt_life_skills",               limit: 4
    t.integer  "iptt_SRHR_BCC",                  limit: 4
    t.integer  "iptt_leaders_reached",           limit: 4
    t.integer  "iptt_trained_service_providers", limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "form_health_mnhs", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "facility",                      limit: 255
    t.text     "service_del_svd",               limit: 65535
    t.text     "service_del_ve",                limit: 65535
    t.text     "service_del_mart_death",        limit: 65535
    t.string   "service_del_ref",               limit: 255
    t.string   "service_del_ref_eclampsia",     limit: 255
    t.string   "service_del_ref_labour",        limit: 255
    t.string   "service_del_ref_aph",           limit: 255
    t.string   "service_del_ref_cs",            limit: 255
    t.string   "service_del_ref_other",         limit: 255
    t.string   "service_del_ref_breech",        limit: 255
    t.string   "service_del_ref_twins",         limit: 255
    t.text     "neonates_male",                 limit: 65535
    t.text     "neonates_female",               limit: 65535
    t.text     "nnd_male",                      limit: 65535
    t.text     "nnd_female",                    limit: 65535
    t.text     "nnd_ref",                       limit: 65535
    t.string   "nnd_fsb",                       limit: 255
    t.string   "nnd_msb",                       limit: 255
    t.string   "nnd_premature",                 limit: 255
    t.string   "nnd_lbw",                       limit: 255
    t.text     "outreach_preg_mother",          limit: 65535
    t.string   "outreach_initial",              limit: 255
    t.string   "outreach_subsequent",           limit: 255
    t.string   "outreach_2nd",                  limit: 255
    t.string   "outreach_3rd",                  limit: 255
    t.string   "outreach_4th",                  limit: 255
    t.text     "outreach_male",                 limit: 65535
    t.string   "outreach_underfive_initial",    limit: 255
    t.string   "outreach_underfive_subsequent", limit: 255
    t.text     "outreach_female",               limit: 65535
    t.text     "mobilization_men",              limit: 65535
    t.text     "slas",                          limit: 65535
    t.text     "facility_planning",             limit: 65535
    t.text     "inf_prev_male",                 limit: 65535
    t.text     "inf_prev_female",               limit: 65535
    t.text     "exl_bf_male",                   limit: 65535
    t.text     "exl_bf_female",                 limit: 65535
    t.text     "hac_train_male",                limit: 65535
    t.text     "hac_train_female",              limit: 65535
    t.text     "menu_male",                     limit: 65535
    t.text     "menu_female",                   limit: 65535
    t.text     "nutri_male",                    limit: 65535
    t.text     "nutri_female",                  limit: 65535
    t.text     "tpt_comm_male",                 limit: 65535
    t.text     "tpt_comm_female",               limit: 65535
    t.text     "sf_mothood_male",               limit: 65535
    t.text     "sf_mothood_female",             limit: 65535
    t.text     "hac_male",                      limit: 65535
    t.text     "hac_female",                    limit: 65535
    t.text     "cluster_male",                  limit: 65535
    t.text     "cluster_female",                limit: 65535
    t.text     "dec_male",                      limit: 65535
    t.text     "dec_female",                    limit: 65535
    t.text     "skilled_doc",                   limit: 65535
    t.text     "skilled_cli",                   limit: 65535
    t.text     "skilled_nur",                   limit: 65535
    t.text     "support_hsa",                   limit: 65535
    t.text     "support_PA",                    limit: 65535
    t.text     "support_HCW",                   limit: 65535
    t.text     "support_guard",                 limit: 65535
    t.text     "support_drv",                   limit: 65535
    t.text     "maintenance_veh",               limit: 65535
    t.text     "maintenance_mcycle",            limit: 65535
    t.text     "maintenance_comp",              limit: 65535
    t.text     "maintenance_boat",              limit: 65535
    t.text     "maintenance_rad",               limit: 65535
    t.text     "water_run",                     limit: 65535
    t.text     "water_borehole",                limit: 65535
    t.text     "water_elec",                    limit: 65535
    t.text     "water_solar",                   limit: 65535
    t.text     "water_torch",                   limit: 65535
    t.text     "demo_garden",                   limit: 65535
    t.text     "hearth",                        limit: 65535
    t.text     "preg_shelter",                  limit: 65535
    t.text     "sup_DHO",                       limit: 65535
    t.text     "sup_coord",                     limit: 65535
    t.text     "sup_focal",                     limit: 65535
    t.text     "sup_NCA",                       limit: 65535
    t.text     "sup_zone",                      limit: 65535
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "form_health_reproductive_health_output_2s", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "youth_clubs",                 limit: 4
    t.integer  "active_clubs",                limit: 4
    t.integer  "star_cycle_train_m_less_10",  limit: 4
    t.integer  "star_cycle_train_m_10_14",    limit: 4
    t.integer  "star_cycle_train_m_15_20",    limit: 4
    t.integer  "star_cycle_train_m_21_24",    limit: 4
    t.integer  "star_cycle_train_f_less_10",  limit: 4
    t.integer  "star_cycle_train_f_10_14",    limit: 4
    t.integer  "star_cycle_train_f_15_20",    limit: 4
    t.integer  "star_cycle_train_f_21_24",    limit: 4
    t.integer  "star_cycle_groups_formed",    limit: 4
    t.integer  "life_skills_train_m_less_10", limit: 4
    t.integer  "life_skills_train_m_10_14",   limit: 4
    t.integer  "life_skills_train_m_15_20",   limit: 4
    t.integer  "life_skills_train_m_21_24",   limit: 4
    t.integer  "life_skills_train_f_less_10", limit: 4
    t.integer  "life_skills_train_f_10_14",   limit: 4
    t.integer  "life_skills_train_f_15_20",   limit: 4
    t.integer  "life_skills_train_f_21_24",   limit: 4
    t.integer  "peer_edu_train_m_less_10",    limit: 4
    t.integer  "peer_edu_train_m_10_14",      limit: 4
    t.integer  "peer_edu_train_m_15_20",      limit: 4
    t.integer  "peer_edu_train_m_21_24",      limit: 4
    t.integer  "peer_edu_train_f_less_10",    limit: 4
    t.integer  "peer_edu_train_f_10_14",      limit: 4
    t.integer  "peer_edu_train_f_15_20",      limit: 4
    t.integer  "peer_edu_train_f_21_24",      limit: 4
    t.integer  "youth_centre_rehabilitated",  limit: 4
    t.integer  "bicycles",                    limit: 4
    t.integer  "leadership",                  limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "form_health_reproductive_health_output_fours", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "comm_dia_leaders_m",     limit: 255
    t.string   "comm_dia_leaders_f",     limit: 255
    t.string   "comm_dia_chiefs_m",      limit: 255
    t.string   "comm_dia_chiefs_f",      limit: 255
    t.string   "comm_dia_politicians_m", limit: 255
    t.string   "comm_dia_politicians_f", limit: 255
    t.string   "srh_leaders_m",          limit: 255
    t.string   "srh_leaders_f",          limit: 255
    t.string   "srh_chiefs_m",           limit: 255
    t.string   "srh_chiefs_f",           limit: 255
    t.string   "srh_politicians_m",      limit: 255
    t.string   "srh_politicians_f",      limit: 255
    t.string   "sgbv_m",                 limit: 255
    t.string   "sgbv_f",                 limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "form_health_reproductive_health_output_threes", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "sens_camp_key_mes_1",       limit: 255
    t.string   "sens_camp_key_mes_2",       limit: 255
    t.string   "sens_camp_key_mes_3",       limit: 255
    t.string   "sens_camp_key_mes_4",       limit: 255
    t.string   "sens_camp_key_mes_5",       limit: 255
    t.string   "sens_camp_key_mes_6",       limit: 255
    t.string   "sens_camp_key_mes_7",       limit: 255
    t.string   "sens_camp_key_mes_8",       limit: 255
    t.string   "sens_camp_key_mes_9",       limit: 255
    t.string   "sens_camp_channel_1",       limit: 255
    t.string   "sens_camp_channel_2",       limit: 255
    t.string   "sens_camp_channel_3",       limit: 255
    t.string   "sens_camp_channel_4",       limit: 255
    t.string   "sens_camp_channel_5",       limit: 255
    t.string   "sens_camp_channel_6",       limit: 255
    t.string   "sens_camp_channel_7",       limit: 255
    t.string   "sens_camp_channel_8",       limit: 255
    t.string   "sens_camp_channel_9",       limit: 255
    t.string   "sens_camp_key_mes_fig_1",   limit: 255
    t.string   "sens_camp_key_mes_fig_2",   limit: 255
    t.string   "sens_camp_key_mes_fig_3",   limit: 255
    t.string   "sens_camp_key_mes_fig_4",   limit: 255
    t.string   "sens_camp_key_mes_fig_5",   limit: 255
    t.string   "sens_camp_key_mes_fig_6",   limit: 255
    t.string   "sens_camp_key_mes_fig_7",   limit: 255
    t.string   "sens_camp_key_mes_fig_8",   limit: 255
    t.string   "sens_camp_key_mes_fig_9",   limit: 255
    t.string   "ad_camp_key_mes_1",         limit: 255
    t.string   "ad_camp_key_mes_2",         limit: 255
    t.string   "ad_camp_key_mes_3",         limit: 255
    t.string   "ad_camp_key_mes_4",         limit: 255
    t.string   "ad_camp_key_mes_5",         limit: 255
    t.string   "ad_camp_key_mes_6",         limit: 255
    t.string   "ad_camp_key_mes_7",         limit: 255
    t.string   "ad_camp_key_mes_8",         limit: 255
    t.string   "ad_camp_key_mes_9",         limit: 255
    t.string   "ad_camp_key_mes_10",        limit: 255
    t.string   "ad_camp_key_mes_11",        limit: 255
    t.string   "ad_camp_key_mes_12",        limit: 255
    t.string   "ad_camp_key_channel_1",     limit: 255
    t.string   "ad_camp_key_channel_2",     limit: 255
    t.string   "ad_camp_key_channel_3",     limit: 255
    t.string   "ad_camp_key_channel_4",     limit: 255
    t.string   "ad_camp_key_channel_5",     limit: 255
    t.string   "ad_camp_key_channel_6",     limit: 255
    t.string   "ad_camp_key_channel_7",     limit: 255
    t.string   "ad_camp_key_channel_8",     limit: 255
    t.string   "ad_camp_key_channel_9",     limit: 255
    t.string   "ad_camp_key_channel_10",    limit: 255
    t.string   "ad_camp_key_channel_11",    limit: 255
    t.string   "ad_camp_key_channel_12",    limit: 255
    t.string   "ad_camp_key_mes_fig_1",     limit: 255
    t.string   "ad_camp_key_mes_fig_2",     limit: 255
    t.string   "ad_camp_key_mes_fig_3",     limit: 255
    t.string   "ad_camp_key_mes_fig_4",     limit: 255
    t.string   "ad_camp_key_mes_fig_5",     limit: 255
    t.string   "ad_camp_key_mes_fig_6",     limit: 255
    t.string   "ad_camp_key_mes_fig_7",     limit: 255
    t.string   "ad_camp_key_mes_fig_8",     limit: 255
    t.string   "ad_camp_key_mes_fig_9",     limit: 255
    t.string   "ad_camp_key_mes_fig_10",    limit: 255
    t.string   "ad_camp_key_mes_fig_11",    limit: 255
    t.string   "ad_camp_key_mes_fig_12",    limit: 255
    t.string   "special_event_days",        limit: 255
    t.string   "management_of_youth_clubs", limit: 255
    t.string   "iec_posters",               limit: 255
    t.string   "iec_10",                    limit: 255
    t.string   "iec_flyers",                limit: 255
    t.string   "iec_tshirts",               limit: 255
    t.string   "iec_10121022",              limit: 255
    t.string   "jingles",                   limit: 255
    t.string   "jingles_aired",             limit: 255
    t.string   "couples",                   limit: 255
    t.string   "counselors",                limit: 255
    t.string   "parliament",                limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "form_health_reproductive_health_output_twos", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "youth_clubs",                 limit: 255
    t.string   "active_clubs",                limit: 255
    t.string   "star_cycle_train_m_less_10",  limit: 255
    t.string   "star_cycle_train_m_10_14",    limit: 255
    t.string   "star_cycle_train_m_15_20",    limit: 255
    t.string   "star_cycle_train_m_21_24",    limit: 255
    t.string   "star_cycle_train_f_less_10",  limit: 255
    t.string   "star_cycle_train_f_10_14",    limit: 255
    t.string   "star_cycle_train_f_15_20",    limit: 255
    t.string   "star_cycle_train_f_21_24",    limit: 255
    t.string   "star_cycle_groups_formed",    limit: 255
    t.string   "life_skills_train_m_less_10", limit: 255
    t.string   "life_skills_train_m_10_14",   limit: 255
    t.string   "life_skills_train_m_15_20",   limit: 255
    t.string   "life_skills_train_m_21_24",   limit: 255
    t.string   "life_skills_train_f_less_10", limit: 255
    t.string   "life_skills_train_f_10_14",   limit: 255
    t.string   "life_skills_train_f_15_20",   limit: 255
    t.string   "life_skills_train_f_21_24",   limit: 255
    t.string   "peer_edu_train_m_less_10",    limit: 255
    t.string   "peer_edu_train_m_10_14",      limit: 255
    t.string   "peer_edu_train_m_15_20",      limit: 255
    t.string   "peer_edu_train_m_21_24",      limit: 255
    t.string   "peer_edu_train_f_less_10",    limit: 255
    t.string   "peer_edu_train_f_10_14",      limit: 255
    t.string   "peer_edu_train_f_15_20",      limit: 255
    t.string   "peer_edu_train_f_21_24",      limit: 255
    t.string   "youth_centre_rehabilitated",  limit: 255
    t.string   "bicycles",                    limit: 255
    t.string   "leadership",                  limit: 255
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "form_health_trainings", force: :cascade do |t|
    t.string   "trn_hundred_percent_license",   limit: 255
    t.integer  "trn_satisfaction_level",        limit: 4
    t.integer  "trn_BSC_RM_Curr",               limit: 4
    t.integer  "trn_tutor_perf_tools",          limit: 4
    t.integer  "trn_mentor_skills",             limit: 4
    t.integer  "trn_reduction_unprof_student",  limit: 4
    t.integer  "trn_tutor_induct_midwife",      limit: 4
    t.string   "trn_strategic_plans",           limit: 255
    t.string   "trn_ops_plans",                 limit: 255
    t.integer  "trn_good_governance",           limit: 4
    t.integer  "trn_policies",                  limit: 4
    t.integer  "trn_motivated_pupils",          limit: 4
    t.integer  "trn_research",                  limit: 4
    t.integer  "trn_ntwk_meetings",             limit: 4
    t.integer  "trn_MOU",                       limit: 4
    t.integer  "trn_monitoring",                limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.date     "start_date"
    t.date     "end_date"
    t.string   "trn_college",                   limit: 255
    t.string   "trn_research_tut",              limit: 255
    t.string   "trn_management_systems_typ1",   limit: 255
    t.string   "trn_management_systems_num1",   limit: 255
    t.string   "trn_management_systems_typ2",   limit: 255
    t.string   "trn_management_systems_num2",   limit: 255
    t.string   "trn_management_systems_typ3",   limit: 255
    t.string   "trn_management_systems_num3",   limit: 255
    t.string   "trn_teaching_materials_typ1",   limit: 255
    t.string   "trn_teaching_materials_num1",   limit: 255
    t.string   "trn_teaching_materials_typ2",   limit: 255
    t.string   "trn_teaching_materials_num2",   limit: 255
    t.string   "trn_teaching_materials_typ3",   limit: 255
    t.string   "trn_teaching_materials_num3",   limit: 255
    t.string   "trn_capacity_built_typ1",       limit: 255
    t.string   "trn_capacity_built_num1",       limit: 255
    t.string   "trn_capacity_built_typ2",       limit: 255
    t.string   "trn_capacity_built_num2",       limit: 255
    t.string   "trn_capacity_built_typ3",       limit: 255
    t.string   "trn_capacity_built_num3",       limit: 255
    t.string   "trn_course_outlines_typ1",      limit: 255
    t.string   "trn_course_outlines_num1",      limit: 255
    t.string   "trn_course_outlines_typ2",      limit: 255
    t.string   "trn_course_outlines_num2",      limit: 255
    t.string   "trn_course_outlines_typ3",      limit: 255
    t.string   "trn_course_outlines_num3",      limit: 255
    t.string   "trn_course_outlines_typ4",      limit: 255
    t.string   "trn_course_outlines_num4",      limit: 255
    t.string   "trn_course_outlines_typ5",      limit: 255
    t.string   "trn_course_outlines_num5",      limit: 255
    t.string   "trn_clinical_asses_tools_typ1", limit: 255
    t.string   "trn_clinical_asses_tools_num1", limit: 255
    t.string   "trn_clinical_asses_tools_typ2", limit: 255
    t.string   "trn_clinical_asses_tools_num2", limit: 255
    t.string   "trn_clinical_asses_tools_typ3", limit: 255
    t.string   "trn_clinical_asses_tools_num3", limit: 255
    t.string   "trn_tutor_perf_tools_utl",      limit: 255
    t.string   "trn_SOPs_typ1",                 limit: 255
    t.string   "trn_SOPs_num1",                 limit: 255
    t.string   "trn_SOPs_typ2",                 limit: 255
    t.string   "trn_SOPs_num2",                 limit: 255
    t.string   "trn_SOPs_typ3",                 limit: 255
    t.string   "trn_SOPs_num3",                 limit: 255
    t.string   "trn_policy_typ1",               limit: 255
    t.string   "trn_policy_num1",               limit: 255
    t.string   "trn_policy_typ2",               limit: 255
    t.string   "trn_policy_num2",               limit: 255
    t.string   "trn_policy_typ3",               limit: 255
    t.string   "trn_policy_num3",               limit: 255
  end

  create_table "form_trainings", force: :cascade do |t|
    t.integer  "trn_hundred_percent_license",  limit: 4
    t.integer  "trn_management_systems",       limit: 4
    t.integer  "trn_teaching_materials",       limit: 4
    t.integer  "trn_capacity_built",           limit: 4
    t.integer  "trn_satisfaction_level",       limit: 4
    t.integer  "trn_course_outlines",          limit: 4
    t.integer  "trn_BSC_RM_Curr",              limit: 4
    t.integer  "trn_clinical_asses_tools",     limit: 4
    t.integer  "trn_tutor_perf_tools",         limit: 4
    t.integer  "trn_mentor_skills",            limit: 4
    t.integer  "trn_reduction_unprof_student", limit: 4
    t.integer  "trn_tutor_induct_midwife",     limit: 4
    t.integer  "trn_strategic_plans",          limit: 4
    t.integer  "trn_ops_plans",                limit: 4
    t.integer  "trn_financial_systems",        limit: 4
    t.integer  "trn_SOPs",                     limit: 4
    t.integer  "trn_good_governance",          limit: 4
    t.integer  "trn_policies",                 limit: 4
    t.integer  "trn_motivated_pupils",         limit: 4
    t.integer  "trn_research",                 limit: 4
    t.integer  "trn_ntwk_meetings",            limit: 4
    t.integer  "trn_MOU",                      limit: 4
    t.integer  "trn_monitoring",               limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "forms", force: :cascade do |t|
    t.text     "program",           limit: 65535
    t.date     "start_date"
    t.date     "end_date"
    t.text     "cases_reported",    limit: 65535
    t.text     "resolved_law",      limit: 65535
    t.text     "percentage",        limit: 65535
    t.text     "churches",          limit: 65535
    t.text     "outreach",          limit: 65535
    t.text     "clinics",           limit: 65535
    t.text     "campaigns",         limit: 65535
    t.text     "resolved_informal", limit: 65535
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "reports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reproductive_health_output_2s", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "youth_clubs",                 limit: 4
    t.integer  "active_clubs",                limit: 4
    t.integer  "star_cycle_train_m_less_10",  limit: 4
    t.integer  "star_cycle_train_m_10_14",    limit: 4
    t.integer  "star_cycle_train_m_15_20",    limit: 4
    t.integer  "star_cycle_train_m_21_24",    limit: 4
    t.integer  "star_cycle_train_f_less_10",  limit: 4
    t.integer  "star_cycle_train_f_10_14",    limit: 4
    t.integer  "star_cycle_train_f_15_20",    limit: 4
    t.integer  "star_cycle_train_f_21_24",    limit: 4
    t.integer  "star_cycle_groups_formed",    limit: 4
    t.integer  "life_skills_train_m_less_10", limit: 4
    t.integer  "life_skills_train_m_10_14",   limit: 4
    t.integer  "life_skills_train_m_15_20",   limit: 4
    t.integer  "life_skills_train_m_21_24",   limit: 4
    t.integer  "life_skills_train_f_less_10", limit: 4
    t.integer  "life_skills_train_f_10_14",   limit: 4
    t.integer  "life_skills_train_f_15_20",   limit: 4
    t.integer  "life_skills_train_f_21_24",   limit: 4
    t.integer  "peer_edu_train_m_less_10",    limit: 4
    t.integer  "peer_edu_train_m_10_14",      limit: 4
    t.integer  "peer_edu_train_m_15_20",      limit: 4
    t.integer  "peer_edu_train_m_21_24",      limit: 4
    t.integer  "peer_edu_train_f_less_10",    limit: 4
    t.integer  "peer_edu_train_f_10_14",      limit: 4
    t.integer  "peer_edu_train_f_15_20",      limit: 4
    t.integer  "peer_edu_train_f_21_24",      limit: 4
    t.integer  "youth_centre_rehabilitated",  limit: 4
    t.integer  "bicycles",                    limit: 4
    t.integer  "leadership",                  limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "test_mes", force: :cascade do |t|
    t.integer  "me",         limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
