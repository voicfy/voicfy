class CreateVoicesamples < ActiveRecord::Migration[5.1]
  def change
    create_table :voicesamples do |t|
      t.string :userID
      t.string :productioncategory
      t.string :audiofile
      t.string :client
      t.references :voiceover, foreign_key: true

      t.timestamps
    end
  end
end
