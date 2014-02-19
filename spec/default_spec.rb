# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'mod_pagespeed::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'grabs the mod_pagespeed deb from Google' do
    expect(chef_run).to create_remote_file('/tmp/mod-pagespeed-stable_current_amd64.deb')
  end

  it 'installs the mod-pagespeed-stable deb' do
    expect(chef_run).to install_dpkg_package('mod-pagespeed-stable')
  end
end
