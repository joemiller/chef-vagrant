TODO


Specs/Design
------------

	vagrant::default
		include vagrant::virtualbox
		include vagrant::vagrant

	vagrant::virtualbox
		apt_repo - oracle's vbox repo
		package - vbox

	vagrant::vagrant
		install the omnibus vagrant package