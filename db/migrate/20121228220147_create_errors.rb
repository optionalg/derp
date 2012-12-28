class CreateErrors < ActiveRecord::Migration
  def up
    create_table(:errors) do |t|
      t.string :message, :null => false, :default => ""
      t.references :project, :null => false
    end
    add_foreign_key(:errors, :projects, :dependent => :delete)
  end

  def down
    remove_foreign_key(:errors, :projects)
    drop_table(:errors)
  end
end
