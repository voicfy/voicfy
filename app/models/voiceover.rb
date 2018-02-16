class Voiceover < ApplicationRecord

  has_many :voicesamples

  #validations
  #validates :email, presence: true;
end
