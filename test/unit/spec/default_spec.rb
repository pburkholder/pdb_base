# Encoding: utf-8
require_relative 'spec_helper'

describe 'pdb_base::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'should create MOTD' do
    expect(chef_run).to render_file('/etc/release')
      .with_content('pburkholder')
  end
end
