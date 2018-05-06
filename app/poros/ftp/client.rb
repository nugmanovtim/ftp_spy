require 'net/ftp'
module Ftp
  class Client
    def initialize(addr, username, password)
      @addr = addr
      @username = username
      @password = password
    end

    def login
      Net::FTP.open(@addr) do |ftp|
        ftp.login(@username, @password)
        yield ftp
      end
    end
  end
end
