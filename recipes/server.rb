#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2020 The Authors, All Rights Reserved.


package 'httpd'

file '/var/www/html/index.html' do
  content "<h1> Hello Alfred from AWS !</h1>
<h2>IP ADDR: #{node['ipaddress']}</h2>
<h2>HOSTNAME: #{node['hostnamectl']['static_hostname']}</h2>
<p><a href='https://ap-southeast-1.console.aws.amazon.com/console/home?region=ap-southeast-1'>AWS</a> is a pretty good website.</p>

"
end
service 'httpd' do
  action [:enable, :start]
end
