Ansible JBoss Data Grid Role [![Build Status](https://travis-ci.org/redhat-cop/jboss_datagrid.svg)](https://travis-ci.org/redhat-cop/jboss_datagrid)
=================

A role to install JBoss Data Grid on RHEL7. Intended to be used with [JBoss Middleware Playbooks](https://github.com/redhat-cop/ansible-middleware-playbooks)

Transfer Method
------------

This role supports a few different mechanism for transferring the product zip files to the target host. These are documented on [the main playbooks README](https://github.com/redhat-cop/ansible-middleware-playbooks), as the methods are supported across a variety of roles.


Dependencies
------------

- java
- unzip

Our playbooks provide these dependencies in a [common role](https://github.com/redhat-cop/ansible-middleware-playbooks/tree/master/roles/common), but this there is no explicitly ansible dependency to allow end users more options.

Example Playbooks
----------------

- [JBoss Data Grid 6.6.0 on CentOS 7](https://github.com/redhat-cop/ansible-middleware-playbooks/blob/master/jdg-6.6.0-centos7.yml)
- [JBoss Data Grid 6.6.0 on RHEL 7](https://github.com/redhat-cop/ansible-middleware-playbooks/blob/master/jdg-6.6.0-rhel7.yml)

License
-------

[LICENSE](./LICENSE)

Authors Information
------------------

* [Andrew Block](https://github.com/sabre1041)
* [Albert Wong](https://github.com/alberttwong)
* [Justin Holmes](https://github.com/sherl0cks)
* [Kamesh Sampath](https://github.com/kameshsampath)
