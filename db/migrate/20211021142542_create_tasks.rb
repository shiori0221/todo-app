class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string    :text,     null: false
      t.text      :memo
      t.datetime  :limit
      t.integer   :list_id,  null: false
      t.timestamps
    end
  end
end
