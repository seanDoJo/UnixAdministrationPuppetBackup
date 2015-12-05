require 'spec_helper'
describe 'generic' do

  context 'with defaults for all parameters' do
    it { should contain_class('generic') }
  end
end
