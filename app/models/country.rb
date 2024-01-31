# frozen_string_literal: true

class Country < ApplicationRecord
  has_many :video_countries, dependent: :destroy

  validates :country_name, presence: true
end
