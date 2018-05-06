module Ftp
  class Spy
    def initialize(addr, username, password)
      @client = Client.new(addr, username, password)
      @result = Hash.new { |hash, key| hash[key] = 0 }
    end

    def go
      @client.login do |ftp|
        Directory.new(ftp, Path.new('/')).traverse.each do |file|
          @result[file.extension] += file.size
        end
      end
      @result
    end
  end
end
