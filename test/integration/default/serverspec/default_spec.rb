# encoding: utf-8
require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'mod_pagespeed::default' do
  describe package('mod-pagespeed-stable') do
    it { should be_installed }
  end
end
