class Agent < ApplicationRecord
  has_many :studioconnections
  has_many :voiceovers, though: :studioconnectios
end
