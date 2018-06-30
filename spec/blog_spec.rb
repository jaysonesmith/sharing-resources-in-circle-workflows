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
        it 'makes a get request for the set url' do
            blog = Blog.new('https://jayson.codes')
            expect(FARADAY).to receive(:get).with('https://jayson.codes')
            blog.get
        end
    end

    describe '.title' do
        it 'returns the title if any is found in a saved response' do
            blog = Blog.new('https://jayson.codes')
            blog.get
            expect(blog.title).to eq 'jayson.codes'
        end
    end
end