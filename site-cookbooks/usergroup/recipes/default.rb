#
# Cookbook Name:: usergroup
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user node['user']['name'] do
    comment "Random user"
    password node['user']['passwd']
    action :create
end

group node['group']['name'] do
    group_name node['group']['name']
    members [ node['user']['name'], "root" ]
    action :create
end
