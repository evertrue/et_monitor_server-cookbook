require 'spec_helper'

describe file('/etc/hosts') do
  describe '#content' do
    subject { super().content }

    it do
      is_expected.to contain('1.2.3.4 test-novpc-public-hostname-node.local')
    end
  end
end
