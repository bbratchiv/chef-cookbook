#
# Cookbook:: nginx_app_cookbook
# Recipe:: apt
#
# Copyright:: 2017, The Authors, All Rights Reserved.

execute "apt-get update" do
  command "apt-get update"
end
