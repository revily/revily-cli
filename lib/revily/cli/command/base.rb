require 'clamp'
require 'cabin'

module Revily
  module Command
    class Base < Clamp::Command

      attr_accessor :logger

      def initialize(*args)
        @logger = Cabin::Channel.get
        @logger.subscribe(STDOUT)

        super(*args)
      end

      option [ '-v', '--version' ], :flag, 'print version and exit' do
        puts Revily::VERSION
        exit 0
      end

      option [ '-l', '--log-level' ], 'LOG_LEVEL', 'log level', default: 'warn' do |log_level|
        @logger.level = log_level
      end

      def execute
      end

      subcommand 'service', 'service commands', Revily::Command::Service
    end
  end

end
