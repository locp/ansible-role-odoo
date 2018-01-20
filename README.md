Role Name
=========

Ansible role to install Odoo Community.

Requirements
------------

This role assists in installing and configuring the Odoo Community edition.
Odoo 9 and 10 can be installed on CentOS 7, but Odoo 11 requires a newer
version of Python than is available on CentOS.  Therefore if you still want
to use the RedHat family, you will need to use Fedora 26.

Role Variables
--------------

| Variable Name           | Default Value         | Description |
|-------------------------|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------------|
|odoo_config_file         | '/etc/odoo/odoo.conf' | The full path to the configuration file.                                                                                                     |
|odoo_enable_odoo9_repo   | false                 | Should the Odoo 9 repository be configured.                                                                                                  |
|odoo_enable_odoo10_repo  | false                 | Should the Odoo 10 repository be configured.                                                                                                 |
|odoo_enable_odoo11_repo  | false                 | Should the Odoo 11 repository be configured.                                                                                                 |
|odoo_install_wkhtmltopdf | false                 | Should the Wkhtmltopdf be installed.                                                                                                         |
|odoo_package_name        | odoo                  | The name of the Odoo package (optionally include the version number).  Will need to be changed to `/etc/odoo/openerp-server.conf` for Odoo 9.|

Example Playbook
----------------

Configure the following variables:

```YAML
---
odoo_enable_odoo10_repo: true
odoo_install_wkhtmltopdf: true
odoo_settings:
  admin_passwd: XXX_TOP_SECRET_XXX
  db_host: False
  db_port: False
  db_user: odoo
  db_password: False
```

Then have something similar to this in your play book:

```YAML
---
- name: Test playbook for the ofbiz role.
  hosts: odoo10
  roles:
    - locp-odoo
```

License
-------

GPLv3

Author Information
------------------

Developed by the
[League of Crafty Programmers](http://www.locp.co.uk) Ltd.

To raise issues or make contributions, please go to
https://github.com/locp/ansible-role-odoo
An optional section for the role authors to include contact information, or a website (HTML is not allowed).
