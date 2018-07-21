

#The default test page for Apache 2 will show customized content.
file 'default www' do
	path '/var/www/html/index.html'
	content 'Hello World!'
end
