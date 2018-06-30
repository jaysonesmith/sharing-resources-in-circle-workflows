When("my blog is requested") do
    @blog = Blog.new('https://jayson.codes')
    @blog.get
end

Then("the title must be {string}") do |expected_title|
    expect(@blog.title).to eq 'jayson.codes'
end