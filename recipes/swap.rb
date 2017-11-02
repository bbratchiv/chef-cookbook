#
# Cookbook:: nginx_app_cookbook
# Recipe:: swap
#
# Copyright:: 2017, The Authors, All Rights Reserved.

swap_location = node['swap_location']
swap_size = node['swap_size']

#write and create swapfile
bash "create-swap" do
  user "root"
  code <<-EOH
    dd if=/dev/zero of=#{swap_location} bs=1M count=#{swap_size} &&
    chmod 600 #{swap_location} && 
    mkswap #{swap_location}
    EOH
  not_if { File.exists?("#{swap_location}") }
end

#adding swap to fstab
line = "#{swap_location} swap swap defaults 0 0"

file = Chef::Util::FileEdit.new('/etc/fstab')
file.insert_line_if_no_match(/#{line}/, line)
file.write_file


execute "mount swap" do
  command "swapon -a"
  action :run
end

