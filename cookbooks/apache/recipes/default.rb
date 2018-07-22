#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#Below logic will install Apache server based on whether the os on vm is rhel or debian based.
if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache2"
end


package 'Apache2' do
	package_name package
	action :install
end

#Enable Apache service and start at boot time.
service 'Apache2' do
	service_name package
	action [:enable, :start]
end

include_recipe 'apache::websites'

