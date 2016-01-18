# Puppet module for Maven 2 settings file
[![Build Status](https://travis-ci.org/Adaptavist/puppet-m2_settings.svg?branch=master)](https://travis-ci.org/Adaptavist/puppet-m2_settings)

* Creates settings.xml in /home/$user/.m2/

# Example

```
class { 'm2_settings':
  user              => "hosting",
  settings_xml_path => "/tmp/settings.xml",
}
```

