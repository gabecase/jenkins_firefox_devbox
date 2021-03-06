#
# Cookbook Name:: reach_jenkins
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe 'apt'
######################################################
# Uncomment this section if you want to install chrome
# include_recipe 'chrome'
# include_recipe 'reach-chromedriver'
######################################################
#####################################################
#Uncomment These lines if you want to install jenkins
#include_recipe 'java'
#include_recipe 'jenkins::master'
#####################################################

%w(
  ruby1.9.3
  libcurl4-openssl-dev
  libnss3-dev
  libmagic-dev
  xvfb
).each do |pkg|
  package pkg do
    action :install
  end
end

###########################################################
# Uncomment this Section if you want to install our Firefox
#include_recipe 'gdebi'
# def get_version
#   if node['firefox'].nil?
#     return 36
#   else
#     node['firefox']['version']
#   end
# end

# FIREFOX_VERSION = get_version
# FIREFOX_FILE = "firefox#{FIREFOX_VERSION}.deb"
# FIREFOX_DIR = Chef::Config[:file_cache_path]
# FIREFOX_URL = "https://packages.reach.rackspace.com/#{FIREFOX_FILE}"

# cookbook_file "#{FIREFOX_DIR}/#{FIREFOX_FILE}" do
#   source FIREFOX_FILE
#   notifies :install, 'package[firefox]', :immediately
# end

# package 'firefox' do
#   provider Chef::Provider::Package::Gdebi
#   source "#{FIREFOX_DIR}/#{FIREFOX_FILE}"
# end
#######################################################


