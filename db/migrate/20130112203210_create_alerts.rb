class CreateAlerts < ActiveRecord::Migration
  def up
    create_table :alerts do |t|
      t.references :project

      t.timestamps
    end
    add_foreign_key(:alerts, :projects, :dependent => :delete)
  end

  def down
    remove_foreign_key(:alerts, :projects)
    drop_table :alerts
  end
end
