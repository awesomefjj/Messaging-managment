class CreateMonitorings < ActiveRecord::Migration[6.0]
  def change
    create_table :monitorings do |t|
      t.integer :tenant_id
      t.string :receive_id
      t.string :receive_type
      t.integer :kind
      t.string :title
      t.text :content
      t.integer :event_id
      t.json :extra_data
      t.datetime :deleted_t
      t.datetime :created_t

      t.timestamps
    end
  end
end
