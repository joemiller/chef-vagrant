
vagrant_pkg_path = "#{Chef::Config['file_cache_path']}/#{node.vagrant.pkg_file}"

remote_file vagrant_pkg_path do
  source  node.vagrant.pkg_url
  mode    0644
end

package "vagrant" do
  action  :install
  source  vagrant_pkg_path
  provider Chef::Provider::Package::Dpkg
end

cookbook_file "/etc/profile.d/vagrant.sh" do
  source  "vagrant.sh"
  mode    '0644'
end