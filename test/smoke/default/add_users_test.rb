# # encoding: utf-8

# Inspec test for recipe nginx_app_cookbook::add_users

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  describe user('john') do
    it { should exist }
  end

  describe user('mike') do
    it { should exist }
  end
end



#node['user'].each do |var|
#  describe var do
#    it { should exist}
#  end
#end

