apt_update 'Update this workstation and fire apt cache daily' do
  frequency 86_400
  action :periodic
end

package 'apache2'

service 'apache2' do
  supports :status => true
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content '<html>
	   <head> <title> Test page </title> </head>
	   <body> 
		<p> Hello Moto! </p>
	   </body>
	   </html>'
end
