#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2020 The Authors, All Rights Reserved.
package 'httpd'
file '/var/www/html/index.html' do
  content '<h1> Hello Alfred from AWS !</h1>'
end
service 'httpd' do
  action [:enable, :start]
end
