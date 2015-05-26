class CreateWords < ActiveRecord::Migration
  def change
     create_table :words do |word|
      word.string :name
      word.string :canonical
      word.timestamp
    end
  end
end
