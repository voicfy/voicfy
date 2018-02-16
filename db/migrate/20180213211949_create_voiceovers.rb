class CreateVoiceovers < ActiveRecord::Migration[5.1]
  def change
    create_table :voiceovers do |t|

      t.string :firstname
      t.string :lastname
      t.string :street
      t.string :city_code
      t.string :city
      t.string :state
      t.string :country

      t.string :telephone
      t.string :mobil
      t.string :fax

      t.string :email
      t.string :website
      t.string :facebook
      t.string :google

      t.string :language
      t.string :origin
      t.string :accent
      t.string :foreign_languages
      t.string :gender
      t.string :voice_age
      t.string :pitch
      t.string :adjectives
      t.string :production_categories
      t.string :famous_actor
      t.string :homstudio
      t.string :studio_connect
      t.string :studio_rate
      t.string :payment
      t.string :currencies
      t.string :notifications

      t.string :membership_status
      t.string :view_count

      t.timestamps null:false
    end
  end
end
