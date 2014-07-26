VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'centos64'
  config.vm.box_url = 'https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box'

  config.vm.network 'private_network', ip: '192.168.33.10'

  config.vm.synced_folder '.', '/vagrant', type: 'nfs'

  config.omnibus.chef_version = :latest

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ['infra/cookbooks', 'infra/site-cookbooks']

    chef.run_list = [
      'recipe[ruby]',
      'recipe[mysql]',
      'recipe[database]',
      'recipe[resolv]'
    ]

    chef.json = {
      ruby: {
        version: '2.1.2'
      },
      rbenv: {
        group_users: ['vagrant']
      },
      mysql: {
        version: '5.6',
        server_root_password: 'sample',
        database: 'sample'
      }
    }
  end
end
