class CreateLightingDirection < ActiveRecord::Migration[5.0]
  def change
    create_table :lighting_directions do |t|
      t.string :name
    end
  end
end
