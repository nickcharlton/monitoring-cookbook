#
# Cookbook Name:: monitoring
# Recipe:: default
#
# Copyright (c) 2013 Nick Charlton
# 
# MIT
#

# we define the settings slightly differently
node.normal[:collectd_librato][:email] = node[:monitoring][:librato][:email]
node.normal[:collectd_librato][:api_token] = node[:monitoring][:librato][:api_token]

# install collectd and the librato plugin
include_recipe 'collectd'
include_recipe 'collectd-librato'

# build up the monitoring plugins

