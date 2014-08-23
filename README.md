Mojolicious::Plugin::Qooxdoo
============================

Qooxdoo JSON-RPC support for the Mojolicious Perl framework.

[![Build Status](https://travis-ci.org/oetiker/mojolicious-plugin-qooxdoo.png?branch=master)](https://travis-ci.org/oetiker/mojolicious-plugin-qooxdoo)
[![Coverage Status](https://img.shields.io/coveralls/oetiker/mojolicious-plugin-qooxdoo.svg)](https://coveralls.io/r/oetiker/mojolicious-plugin-qooxdoo?branch=master)

Installation
------------

```shell
perl Makefile.PL
make
make install
```

Since this module requires Mojolicious to work. I have provided
a little script to install a copy locally. This is especially
useful for testing.

```shell
./setup/build-perl-modules.sh `pwd`/thirdparty
make test
```

Thanks
------

This module is build upon  MojoX::Dispatcher::Qooxdoo::Jsonrpc.
Thanks to Matthias Bloch (matthias at puffin ch) for makeing it
available!


Enjoy

Tobi Oetiker <tobi@oetiker.ch>
