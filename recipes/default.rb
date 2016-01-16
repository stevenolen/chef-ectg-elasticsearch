#
# Cookbook Name:: ectg-elasticsearch
# Recipe:: default
#
# Copyright (C) 2015 UC Regents
#

# which es version?
es_version =
  case node['fqdn']
  when 'ectg1.oit.ucla.edu'
    '1.5.0'
  else
    '1.7.2'
  end

# some basic package deps. only tested on rhel family.
%w(tar java-1.7.0-openjdk).each do |pkg|
  package pkg
end

# install ES
elasticsearch_user 'elasticsearch'
elasticsearch_install 'elasticsearch' do
  type :tarball
  version es_version
end
elasticsearch_configure 'elasticsearch'
elasticsearch_service 'elasticsearch'

service 'elasticsearch' do # recipe above does *not* currently start the service
  action :start
end
