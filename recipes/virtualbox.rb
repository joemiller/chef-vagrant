include_recipe "apt"

apt_repository "virtualbox" do
  uri "http://download.virtualbox.org/virtualbox/debian"
  key "http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc"
  distribution node['lsb']['codename']
  components ["contrib"]
  action :add
end

package "dkms" do
  action :install
end

package node.vagrant.virtualbox_pkg_name do
  action :install
end