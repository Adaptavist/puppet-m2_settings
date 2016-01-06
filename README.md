# Puppet module for Maven 2 settings file

* Creates settings.xml in /home/$user/.m2/

# Example

```
class { 'm2_settings':
  user              => "hosting",
  settings_xml_path => "/tmp/settings.xml",
}
```

