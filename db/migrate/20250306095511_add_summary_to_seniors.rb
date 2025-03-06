class AddSummaryToSeniors < ActiveRecord::Migration[7.1]
  def change
    add_column :seniors, :summary, :text
  end
end
