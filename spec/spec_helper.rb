# ~*~ encoding: utf-8 ~*~
$:.unshift(File.join(File.dirname(__FILE__), "..", "lib"))
require 'thor'
require 'thor/group'
require 'thor/levenshtein'

require 'stringio'

# Set shell to basic
$0 = "thor"
$thor_runner = true
ARGV.clear
Thor::Base.shell = Thor::Shell::Basic

load File.join(File.dirname(__FILE__), "fixtures", "task.thor")

RSpec.configure do |config|

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  def capture(stream)
    begin
      stream = stream.to_s
      eval "$#{stream} = StringIO.new"
      yield
      result = eval("$#{stream}").string
    ensure
      eval("$#{stream} = #{stream.upcase}")
    end
    result
  end

end
