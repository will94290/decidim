class AddDescriptionToDecidimFeatures < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_features, :description, :jsonb
  end
end
