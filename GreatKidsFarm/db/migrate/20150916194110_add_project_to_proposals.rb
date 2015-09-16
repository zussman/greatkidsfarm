class AddProjectToProposals < ActiveRecord::Migration
  def change
    add_reference :proposals, :project, index: true, foreign_key: true
  end
end
