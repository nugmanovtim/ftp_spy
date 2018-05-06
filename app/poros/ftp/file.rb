module Ftp
  class File
    attr_reader :extension, :size
    def initialize(ftp, extension, size)
      @ftp = ftp
      @extension = extension
      @size = size
    end

    def file?
      true
    end

    def directory?
      false
    end
  end
end
