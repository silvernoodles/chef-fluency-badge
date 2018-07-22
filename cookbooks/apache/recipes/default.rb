#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#Install Apache 2.
package 'Apache2' do
	package_name 'httpd'
	action :install
end

#Enable Apache service and start at boot time.
service 'Apache2' do
	service_name 'httpd'
	action [:enable, :start]
end

include_recipe 'apache::websites'

