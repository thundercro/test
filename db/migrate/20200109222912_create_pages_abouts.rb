class CreatePagesAbouts < ActiveRecord::Migration[6.0]
  def change
    create_table :pages_abouts do |t|

      t.timestamps
    end
  end
end
