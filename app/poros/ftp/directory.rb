module Ftp
  class Directory
    def initialize(ftp, path)
      @ftp = ftp
      @path = path
    end

    def traverse
      @ftp.chdir(@path.to_s)
      list.select(&:file?) + list.select(&:directory?).traverse
    end

    def list
      @list = @ftp.list.map do |e|
        file_string = FileString.new(e)
        if file_string.directory?
          Directory.new(@ftp, @path + file_string.name)
        else
          Ftp::File.new(@ftp, file_string.extension, file_string.size)
        end
      end
    end

    def file?
      false
    end

    def directory?
      true
    end
  end
end
