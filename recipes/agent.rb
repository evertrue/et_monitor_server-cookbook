#
# Cookbook Name:: et_monitoring
# Recipe:: agent
#
# Copyright (C) 2013 EverTrue, Inc.
#
# All rights reserved - Do Not Redistribute
#

api_keys = Chef::EncryptedDataBagItem.load('secrets', 'api_keys')

node.set['newrelic-ng']['license_key'] = api_keys['newrelic']

include_recipe 'newrelic-ng'
include_recipe 'et_datadog'
