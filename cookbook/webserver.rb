apt_update 'Update this workstation and fire apt cache daily' do
  frequency 86_400
  action :periodic
end

package 'apache2'
