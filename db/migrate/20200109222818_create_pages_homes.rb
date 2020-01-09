class CreatePagesHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :pages_homes do |t|

      t.timestamps
    end
  end
end
