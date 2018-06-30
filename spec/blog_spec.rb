require 'rspec'
require_relative '.././features/support/blog.rb'

describe Blog do
    describe '.url' do
        it 'returns the currently set URL' do
            blog = Blog.new('https://jayson.codes')
            expect(blog.url).to eq 'https://jayson.codes'
        end
    end

    describe '.get' do
        it 'gets the url and returns the body' do
            blog = Blog.new('https://jayson.codes')
            expect(blog.get).to eq File.read('./fixtures/blog.html')
        end
    end
end