class CreateTask < ActiveRecord::Migration[7.2]
  def change
    create_table :tasks do |t|
      t.string     :title
      t.string     :search_url
      t.integer    :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
