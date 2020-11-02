# frozen_string_literal: true

# add space to begin the string in the file
module UpdateFile
  def self.update(path)
    return 1 unless File.exist?(path)

    File.open("n_#{path}", 'w') do |f|
      IO.foreach(path) do |line|
        f.write(" #{line}")
      end
    end
    0
  end
end
