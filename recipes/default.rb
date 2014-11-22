#
# Cookbook Name:: jq
# Recipe:: default
#

if node['jq']['install_method'] == "package"
  include_recipe "jq::package"
else
  include_recipe "jq::source"
end