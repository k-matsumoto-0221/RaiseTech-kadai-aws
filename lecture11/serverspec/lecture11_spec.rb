require 'spec_helper'

listen_port = 80

# 想定通りの AMI が使用されているか
# 必要なパッケージが必要なバージョンでインストールされている担保が取れるため
describe command('curl http://169.254.169.254/latest/meta-data/ami-id') do
  its(:stdout) { should match /ami-024b33ed6cdf20e4c/ }
end

# nginx が実行中であるか
describe service('nginx') do
  it { should be_running }
end

# unicorn が実行中であるか
describe command('ps aux | grep unicorn | grep -v grep') do
  its(:exit_status) { should eq 0 }
end

# 80 番 port が空いているか
describe port(listen_port) do
  it { should be_listening }
end

# http リクエストが帰ってくるか
describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end
