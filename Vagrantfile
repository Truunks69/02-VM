Vagrant.configure('2') do |config|
        config.vm.box = 'ubuntu/xenial64'
        config.vm.network 'private_network', ip: '192.168.33.10'
        config.vm.synced_folder './data', '/var/www/html'
        config.vm.provider 'virtualbox' do |v|
            v.name = 'LinuxGit10'
        end
    end
    
