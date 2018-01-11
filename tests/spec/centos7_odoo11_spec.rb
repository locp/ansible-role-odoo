require_relative 'spec_helper'

describe 'CentOS7 odoo 11 role' do
  describe yumrepo('odoo') do
    it { should exist }
  end

  describe yumrepo('odoo') do
    it { should be_enabled }
  end

  describe package('odoo') do
    it { should be_installed }
  end

  describe service('odoo') do
    it { should be_enabled }
  end

  describe service('odoo') do
    it { should be_running }
  end
end
