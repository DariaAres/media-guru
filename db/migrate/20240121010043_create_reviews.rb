# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :text
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
