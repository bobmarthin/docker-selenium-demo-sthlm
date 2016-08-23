Vagrant.configure("2") do |config|
  config.ssh.insert_key=true
  config.vm.define 'db' do |postgres|
    postgres.vm.hostname = 'db'
    postgres.vm.provider "docker" do |d|
        d.image = "postgres"
        d.force_host_vm = false
        d.has_ssh = true
        d.name='db'
      end
  end
  config.vm.define 'web' do |web|
      web.vm.hostname = 'web'
      web.vm.provider "docker" do |d|
        d.build_dir = '.'
        d.force_host_vm = false
        d.has_ssh = true
        d.ports = ["3000:3000"]
        d.cmd = ["bundle", "exec", "rails s -p 3000 -b '0.0.0.0'"]
        d.volumes =["/Users/maximguenis/Development/docker-selenium-demo-sthm:/myapp"]
        d.link("db:db")
      end
    end

  config.trigger.before :up do
    run "echo before up"
  end

  config.trigger.after :up  do
    run "vagrant docker-exec web -- rake db:migrate"
  end

end
