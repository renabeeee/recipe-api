class DropSessionsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :sessions, if_exists: true
  end
end
