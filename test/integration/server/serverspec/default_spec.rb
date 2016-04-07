require 'spec_helper'

describe file('/etc/hosts') do
  describe '#content' do
    subject { super().content }

    it do
      is_expected.to contain('1.2.3.4 test-novpc-public-hostname-node.local')
    end
  end
end

describe file '/etc/shinken/services/storage_inodes.cfg' do
  it { is_expected.to be_file }
end

describe file '/etc/shinken/hostgroups/everything.cfg' do
  it { is_expected.to be_file }
  describe '#content' do
    subject { super().content }

    it do
      is_expected.to eq("define hostgroup{
  alias All dev hosts
  hostgroup_name everything
  members server-ubuntu-1204,test-novpc-public-hostname-node,test-vpc-node,test-vpc-public-hostname-node
}\n")
    end
  end
end
