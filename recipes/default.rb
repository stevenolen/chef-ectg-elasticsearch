#
# Cookbook Name:: ectg-elasticsearch
# Recipe:: default
#
# Copyright (C) 2015 UC Regents
#

package 'tar' # needed to extract es tar but not installed by default on centos 6.4
package 'java-1.7.0-openjdk' #only works on rhel family
include_recipe 'elasticsearch' # symlinked recipe that installs, configures and enables service.

service 'elasticsearch' do # recipe above does *not* currently start the service
  action :start
end
