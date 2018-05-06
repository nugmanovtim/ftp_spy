module Ftp
  class Path
    def initialize(value)
      @value = value
    end

    def +(other)
      if @value[-1] == '/'
        Path.new("#{@value}#{other}")
      else
        Path.new("#{@value}/#{other}")
      end
    end

    def to_s
      @value
    end
  end
end
