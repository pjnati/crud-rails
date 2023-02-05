class AddResultToLogs < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :result, :boolean
  end
end
