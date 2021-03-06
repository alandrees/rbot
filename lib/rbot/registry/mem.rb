#-- vim:sw=2:et
#++
#
# :title: Memory registry implementation
#
# This is using a in-memory hash, does not persist, used for
# tests, etc.
#

module Irc
class Bot
class Registry

  class MemAccessor < AbstractAccessor

    def initialize(filename)
      super(filename)
      @data = {}
    end

    def registry
      super
      @registry = @data
    end

    def close
    end

    def flush
    end

    def dbexists?
      true  # the memory database always exists, this way it won't create any folders on the file system
    end

  end

end # Registry
end # Bot
end # Irc

