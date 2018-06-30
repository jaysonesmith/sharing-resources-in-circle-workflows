require 'rspec'
require_relative '.././features/support/blog.rb'

describe Blog do
    describe '.url' do
        it 'returns the currently set URL' do
            blog = Blog.new('https://jayson.codes')
            expect(blog.url).to eq 'https://jayson.codes'
        end
    end
end