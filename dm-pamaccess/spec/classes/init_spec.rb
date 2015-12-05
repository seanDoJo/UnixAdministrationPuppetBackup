require 'spec_helper'
describe 'pamaccess' do

  context 'with defaults for all parameters' do
    it { should contain_class('pamaccess') }
  end
end
