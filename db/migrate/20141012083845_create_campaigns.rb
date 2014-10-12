class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.integer :vote
      t.string :campaign
      t.string :validity
      t.string :choice
      t.string :conn
      t.string :msisdn
      t.string :guid
      t.string :shortcode

      t.timestamps
    end
  end
end
