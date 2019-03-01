class CreateUserCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :user_campaigns do |t|
      t.references :user, foreign_key: true
      t.references :campaign, foreign_key: true

      t.timestamps
    end
  end
end
