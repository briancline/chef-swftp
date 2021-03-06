case node['platform_family']
when "debian"
  default['swftp']['packages'] = %w{python-dev}
when "rhel"
  default['swftp']['packages'] = %w{python-devel}
end

default['swftp']['ftp']['enabled'] = false
default['swftp']['ftp']['port'] = 5021
default['swftp']['sftp']['enabled'] = true
default['swftp']['sftp']['port'] = 5022
default['swftp']['auth_url'] = "http://127.0.0.1:8080/auth/v1.0"
default['swftp']['max_connections'] = 20
default['swftp']['session_connections'] = 10
default['swftp']['connection_timeout'] = 240
default['swftp']['statsd']['enabled'] = false
default['swftp']['statsd']['host'] = "127.0.0.1"
default['swftp']['statsd']['port'] = 8125
