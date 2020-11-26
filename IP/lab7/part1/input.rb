# frozen_string_literal: true

require_relative 'main'

puts 'input path to file'

path = gets

UpdateFile.update(path.delete("\n"))
