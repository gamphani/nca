class AddFieldsToFormGenderTheologies < ActiveRecord::Migration
  def change
    add_column :form_gender_theologies, :theo_church_leader_tot, :string
    add_column :form_gender_theologies, :theo_church_joint_declaration, :string
  end
end
