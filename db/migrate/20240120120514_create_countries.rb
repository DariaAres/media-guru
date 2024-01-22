# frozen_string_literal: true

class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :country_name, null: false

      t.timestamps
    end
  end
end