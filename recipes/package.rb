#
# Cookbook Name:: jq
# Recipe:: pacakge
#

remote_file "/usr/local/bin/jq" do
  source node['jq']['package_url']
  mode 0755
end
