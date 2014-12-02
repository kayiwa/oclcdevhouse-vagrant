# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision :shell, path: "bootstrap.sh"

  config.vm.provision "file", source: "./files/worldcat-discovery-php/composer.json", destination: "/vagrant/www/html/oclcdevhouse/worldcat-discovery-php/composer.json"
  
  config.vm.provision :shell, path: "postinstall.sh"
  
  config.vm.provision "file", source: "./files/worldcat-discovery-php/example.php", destination: "/vagrant/www/html/oclcdevhouse/worldcat-discovery-php/example.php"
  config.vm.provision "file", source: "./files/worldcat-discovery-api-demo-php/.env.php", destination: "/vagrant/www/html/oclcdevhouse/worldcat-discovery-api-demo-php/.env.php"

  config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.synced_folder "www/", "/vagrant/www/", owner: "www-data"
end
