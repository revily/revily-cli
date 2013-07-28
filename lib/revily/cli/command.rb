module Revily
  module Command
    autoload :Base, 'revily/command/base'
    autoload :Service, 'revily/command/service'

    def self.run(*args)
      Base.run(*args)
    end

  end
end
