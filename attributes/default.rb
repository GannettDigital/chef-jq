default['jq']['install_method'] = "package"

case node["platform_family"]
  when "debian", "fedora", "rhel"
    default['jq']['package_url'] = "http://stedolan.github.io/jq/download/linux64/jq"
    default['jq']['install_dir'] = "/usr/local/bin"
  when "mac_os_x"
    default['jq']['package_url'] = "http://stedolan.github.io/jq/download/osx64/jq"
    default['jq']['install_dir'] = "/usr/local/bin"
  when "windows"
    default['jq']['package_url'] = "http://stedolan.github.io/jq/download/win64/jq.exe"
    default['jq']['install_dir'] = "%systemroot%\\system32"
end
