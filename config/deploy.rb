set :application, "r4r"
set :user, "deploy"

# repo details
set :scm, :git
set :branch, 'master'
set :repository, "git@github.com:seesaw/#{application}.git"

# server details
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
set :use_sudo, false
set :deploy_to, "/srv/rails/#{application}"
set :deploy_via, :remote_cache  # if your server has direct access to the repository

require 'bundler/capistrano'

# RVM bootstrap
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require 'rvm/capistrano'
set :rvm_ruby_string, '1.9.2'

server "fuzziland.it", :app, :web, :db, :primary => true

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
