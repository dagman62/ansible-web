Role Name
=========

This role will install nginx from source for load balancer.

Requirements
------------

Supports only Ubuntu bionic 18x

Role Variables
--------------
```
nginx_ver: nginx-1.15.9
pcre_ver: pcre-8.43
zlib_ver: zlib-1.2.11
openssl_ver: openssl-1.1.1b
nginx_tarball_url: "https://nginx.org/download/{{ nginx_ver }}.tar.gz"
pcre_tarball_url: "https://ftp.pcre.org/pub/pcre/{{ pcre_ver }}.tar.gz"
openssl_tarball_url: "https://www.openssl.org/source/{{ openssl_ver }}.tar.gz"
zlib_tarball_url: "https://www.zlib.net/{{ zlib_ver }}.tar.gz"
nginx_install_dir: "/tmp/{{ nginx_ver }}"
pcre_install_dir: "/tmp/{{ pcre_ver }}"
zlib_install_dir: "/tmp/{{ zlib_ver }}"
openssl_install_dir: "/tmp/{{ openssl_ver }}"
nginx_user: nginx
nginx_group: nginx
nginx_streams:
  - "server1.example.com"
  - "server2.example.com"
```
Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      vars:
        nginx_streams:
          - "site1.example.com"
          - "site2.example.com"
          - "site3.example.com"
      roles:
         - { role: nginx-lb }

License
-------

BSD

Author Information
------------------

Gaetano Giacalone

https://dagman62.com
