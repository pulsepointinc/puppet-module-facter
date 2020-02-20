# puppet-module-facter
===

[![Build Status](https://travis-ci.org/ghoneycutt/puppet-module-facter.png?branch=master)](https://travis-ci.org/ghoneycutt/puppet-module-facter)

Puppet module to manage Facter. To use simply `include ::facter`.

===

# Compatibility
---------------
This module is built for use with Puppet v3 (with and without the future
parse), v4, v5 and v6 and supports the ruby versions associated with
those releases on all POSIX like platforms. See `.travis.yml` for an
exact matrix of tested Ruby and Puppet versions.

===

# Define `facter::fact`

Ensures a fact is present in the fact file with stdlib file_line() in fact=value format.

## Usage

You can optionally specify a hash of external facts in Hiera.

```yaml
---
facter::facts_hash:
  role:
    value: 'puppetmaster'
  location:
    value: 'RNB'
    file: 'location.txt'
```

The above configuration in Hiera would produce `/etc/facter/facts.d/facts.txt` with the following content.

```
role=puppetmaster
```

It would also produce `/etc/facter/facts.d/location.txt` with the following content.

```
location=RNB
```
