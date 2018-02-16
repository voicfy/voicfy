class CreateStudioconnections < ActiveRecord::Migration[5.1]
  def change
    create_table :studioconnections do |t|
      t.string :name
      t.date :time
      t.references :voiceovers, foreign_key: true
      t.references :agents, foreign_key: true

      t.timestamps
    end
  end
end
