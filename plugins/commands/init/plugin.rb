require "vagrant"

module VagrantPlugins
  module CommandInit
    class Plugin < Vagrant.plugin("1")
      name "init command"
      description <<-DESC
      The `init` command sets up your working directory to be a
      Vagrant-managed environment.
      DESC

      activated do
        require File.expand_path("../command", __FILE__)
      end

      command("init") { Command }
    end
  end
end
