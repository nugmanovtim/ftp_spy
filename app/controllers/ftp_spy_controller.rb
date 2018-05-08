class FtpSpyController < ApplicationController
  def index
  end

  def go
    @addr = params[:addr]
    @username = params[:username]
    @password = params[:password]
    @report = Ftp::Spy.new(@addr, @username, @password).go
  end
end
