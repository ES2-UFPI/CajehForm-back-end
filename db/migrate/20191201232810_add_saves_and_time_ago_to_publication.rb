class AddSavesAndTimeAgoToPublication < ActiveRecord::Migration[6.0]
  def change
    add_column :publications, :saves, :string
    add_column :publications, :time_ago, :string
  end
end
