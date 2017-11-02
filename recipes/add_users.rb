#
# Cookbook:: nginx_app_cookbook
# Recipe:: add_users
#
# Copyright:: 2017, The Authors, All Rights Reserved.


#Creating users in loop
node['user'].each do |var|
  user var do
    manage_home true
    shell '/bin/bash'
    action :create
  end
    
  directory "/home/#{var}/.ssh" do
    owner "#{var}"
    group "#{var}"
    mode "0700"
    action :create
  end

  template "/home/#{var}/.ssh/authorized_keys" do 
    owner "#{var}"
    group "#{var}"
    mode "0600"
    source "#{var}.pub"
    action :create
  end
  
end


