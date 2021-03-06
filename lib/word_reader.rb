# encoding: utf-8

# Класс, отвечающий за чтение слова для игры

class WordReader
  def read_from_args
    ARGV[0] # Убираем return
  end

  def read_from_file(file_name)
    return nil if !File.exist?(file_name)

    f = File.new(file_name, "r:UTF-8")
    lines = f.readlines
    f.close

    lines.sample.chomp
  end
end