message = node.has_key?(:message) ? node[:message] : "Hello World"

execute "echo message" do
  command "echo '#{message}'"
  action :run
end

package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

template '/var/www/html/index.html' do # ~FC033
  source 'index.html.erb'
end