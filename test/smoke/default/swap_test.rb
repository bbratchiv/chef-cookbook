# # encoding: utf-8

# Inspec test for recipe nginx_app_cookbook::swap

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

#location = node['swap_location']

describe command ('swapon -s') do
  its('stdout') {should match ("/.SWAP") }
end
