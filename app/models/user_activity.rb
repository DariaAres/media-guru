# frozen_string_literal: true

class UserActivity < ApplicationRecord
  belongs_to :user
end
