require_relative 'spec_helper'

describe 'CentOS7 odoo 10 role' do
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

  describe file('/etc/odoo/odoo.conf') do
    it { should exist }
  end

  describe file('/etc/odoo/odoo.conf') do
    its(:content) { should match(/^admin_passwd = XXX_TOP_SECRET_XXX/) }
  end
end
