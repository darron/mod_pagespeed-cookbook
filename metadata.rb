# encoding: utf-8
name             'mod_pagespeed'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures mod_pagespeed'
version          '0.2.0'
recipe           'mod_pagespeed::default', 'Installs/configures mod_pagespeed'

depends 'apache2'
depends 'apt'
