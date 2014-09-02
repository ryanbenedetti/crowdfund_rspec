class AddImageAndTeamMembersToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :image_file_name, :string
    add_column :projects, :team_members, :string
  end
end
