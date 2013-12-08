#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user 'tdi' do
  action :create
  comment "Test Driven Infrastructure"
  home "/home/tdi"
  supports :manage_home => true
end

package 'irssi'

directory '/home/tdi/.irssi' do
  user 'tdi'
  group 'tdi'
end

cookbook_file '/home/tdi/.irssi/config' do
  source 'irssi-config'
  user 'tdi'
  group 'tdi'
  mode 0644
end
