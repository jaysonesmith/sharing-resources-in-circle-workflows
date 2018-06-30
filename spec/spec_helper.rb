require 'faraday'

RSpec.configure do |config|
  config.before(:suite) do
    FARADAY = setup_stubs
  end
end

def setup_stubs
  stubs = Faraday::Adapter::Test::Stubs.new do |stub|
    stub.get('') { [200, {}, File.read('./fixtures/blog.html')] }
  end

  Faraday.new { |f| f.adapter :test, stubs }
end
