module Ftp
  class FileString
    def initialize(str)
      @arr = str.split(' ') # I'll have trouble with filenames containing spaces
    end

    def directory?
      access_rights.first == 'd'
    end

    def name
      @arr.last
    end

    EXTENSION_REGEX = /^.+\.(.*)$/
    # implement regex
    def extension
      EXTENSION_REGEX.match(name) { |m| m[1] }
    end

    def size
      @arr.fifth.to_i
    end

    private

    def access_rights
      @arr.first
    end
  end
end
