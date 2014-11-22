default['jq']['install_method'] = "package"

case node["platform_family"]
  when "debian", "fedora", "rhel"
    default['jq']['package_url'] = "http://stedolan.github.io/jq/download/linux64/jq"
  when "mac_os_x"
    default['jq']['package_url'] = "http://stedolan.github.io/jq/download/osx64/jq"
  when "windows"
    default['jq']['package_url'] = "http://stedolan.github.io/jq/download/win64/jq.exe"
end
