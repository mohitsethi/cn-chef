require 'spec_helper'

describe 'cerner_users::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }
  it 'install web server apache' do
    expect(chef_run).to install_package('apache2')
  end
end
