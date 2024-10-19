class CreateJwtDenyList < ActiveRecord::Migration[7.2]
  def change
    create_table :jwt_denylists do |t|
      t.string   :jti, index: true
      t.datetime :exp

      t.timestamps
    end
  end
end
