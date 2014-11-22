#
# Cookbook Name:: jq
# Recipe:: pacakge
#
if node["platform_family"] == "windows"
  remote_file "#{node['jq']['install_dir']}\\jq.exe" do
    source node['jq']['package_url']
  end
else
  remote_file "#{node['jq']['install_dir']}\\jq" do
  	source node['jq']['package_url']
  	mode 0755
  end
end