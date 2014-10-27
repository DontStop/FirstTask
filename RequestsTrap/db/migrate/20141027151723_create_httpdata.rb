class CreateHttpdata < ActiveRecord::Migration
  def change
    create_table :httpdata do |t|
      t.string :remote_ip
      t.string :request_method
      t.string :query_string
      t.string :query_params
      t.integer :request_id

      t.timestamps
    end
  end
end
