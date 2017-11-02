# # encoding: utf-8

# Inspec test for recipe nginx_app_cookbook::nginx

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/
describe package('nginx') do 
  it {should be_installed}
end

describe port(80) do
  it { should be_listening }
end


