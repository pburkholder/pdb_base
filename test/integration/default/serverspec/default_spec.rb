require 'serverspec'
set :backend, :exec

describe file('/etc/release') do
  its(:content) { should match(/pburkholder/) }
end
