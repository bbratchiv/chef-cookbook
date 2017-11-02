#
# Cookbook:: nginx_app_cookbook
# Recipe:: nginx
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "apt"

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end

file '/usr/share/nginx/html/index.html' do
  content '<h1>This Nginx test page.</h1>'
  mode '0777'
  owner 'root'
  group 'root'
end
