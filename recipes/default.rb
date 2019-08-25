#
# Cookbook:: ch4_webserver
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'httpd' do
  action :install
end

template '/var/www/html/index.html' do
    source 'index.html.erb'
end

service 'httpd' do
  action [:enable, :start]
end

