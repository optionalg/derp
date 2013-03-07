class MoveErrorsUnderAlerts < ActiveRecord::Migration
  def up
    remove_foreign_key(:errors, :projects)
    remove_column(:errors, :project_id)
    add_column(:errors, :alert_id, :integer)
    add_foreign_key(:errors, :alerts, :dependent => :delete)
  end

  def down
    remove_foreign_key(:errors, :alerts)
    remove_column(:errors, :alert_id)
    add_column(:errors, :project_id, :integer)
    add_foreign_key(:errors, :alerts, :dependent => :delete)
  end
end
