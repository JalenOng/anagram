require_relative '../app/models/word.rb'


# module WordsImporter
#   def self.import(filename=File.dirname(__FILE__) + "words.txt")
#     field_names = nil
#     Word.transaction do
#       File.open(filename).each do |line|
#         data = line.chomp.split(',')
#         if field_names.nil?
#           field_names = data
#         else
#           attribute_hash = Hash[field_names.zip(data)]
#           word = Word.create!(attribute_hash)
#         end
#       end
#     end
#   end
# end

class WordsImporter
  def self.import

    csv = File.open('db/words')
    csv.each do |row|
      Word.create(name: row.chomp, canonical: Word.canonical(row.chomp).join )
    end
  end
end